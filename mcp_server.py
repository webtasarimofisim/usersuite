#!/usr/bin/env python3
import sys
import json
import logging
from scripts.ghost_engine import get_saved_license, call_api

# MCP (Model Context Protocol) Standartlarina uygun evrensel kopru
def send_message(msg):
    sys.stdout.write(json.dumps(msg) + "\n")
    sys.stdout.flush()

def main():
    while True:
        line = sys.stdin.readline()
        if not line:
            break
        try:
            req = json.loads(line)
            req_id = req.get("id")
            if req.get("method") == "initialize":
                send_message({
                    "jsonrpc": "2.0",
                    "id": req_id,
                    "result": {
                        "protocolVersion": "2024-11-05",
                        "capabilities": {"tools": {}},
                        "serverInfo": {"name": "MasterSuite-GhostEngine", "version": "1.0.0"}
                    }
                })
            elif req.get("method") == "tools/list":
                send_message({
                    "jsonrpc": "2.0",
                    "id": req_id,
                    "result": {
                        "tools": [
                            {
                                "name": "verify_license",
                                "description": "Master Suite lisans ve sistem denetleyicisi.",
                                "inputSchema": {"type": "object", "properties": {}}
                            },
                            {
                                "name": "report_bug",
                                "description": "Kullanıcının sistemde karşılaştığı hataları merkeze bildirir. Kullanıcı '/bug [mesaj]' yazdığında tetiklenmelidir.",
                                "inputSchema": {
                                    "type": "object", 
                                    "properties": {
                                        "bug_details": {"type": "string", "description": "Hatanın veya sorunun detayı"},
                                        "user_info": {"type": "string", "description": "Kullanıcının adı, domaini veya lisans kodu (varsa)"},
                                        "email": {"type": "string", "description": "Kullanıcının e-posta adresi (iletişim için)"}
                                    },
                                    "required": ["bug_details"]
                                }
                            }
                        ]
                    }
                })
            elif req.get("method") == "tools/call":
                tool_name = req.get("params", {}).get("name")
                if tool_name == "verify_license":
                    saved_code = get_saved_license()
                    status = "Lisans Bulunamadi."
                    if saved_code:
                        res = call_api("verify_license", saved_code)
                        if res and res.get("status") == "success":
                            status = "Lisans Aktif: " + saved_code
                        else:
                            status = "Lisans Gecersiz veya Suresi Dolmus."
                    send_message({
                        "jsonrpc": "2.0",
                        "id": req_id,
                        "result": {
                            "content": [{"type": "text", "text": status}],
                            "isError": False
                        }
                    })
                elif tool_name == "report_bug":
                    import urllib.request
                    import urllib.parse
                    args = req.get("params", {}).get("arguments", {})
                    bug_details = args.get("bug_details", "")
                    user_info = args.get("user_info", get_saved_license() or "Bilinmeyen Kullanıcı")
                    email = args.get("email", "")
                    
                    data = urllib.parse.urlencode({'bug_details': bug_details, 'user_info': user_info, 'email': email}).encode('utf-8')
                    try:
                        # Geliştirme aşamasında local teste atar, canlıda domain ile değiştirilebilir.
                        req_obj = urllib.request.Request("http://127.0.0.1/api/bug-report", data=data)
                        urllib.request.urlopen(req_obj, timeout=5)
                        status = "Hata bildiriminiz başarıyla iletildi. Teşekkür ederiz."
                    except Exception as e:
                        status = f"Hata bildirilemedi: {str(e)}"
                        
                    send_message({
                        "jsonrpc": "2.0",
                        "id": req_id,
                        "result": {
                            "content": [{"type": "text", "text": status}],
                            "isError": False
                        }
                    })
            else:
                if req_id:
                    send_message({"jsonrpc": "2.0", "id": req_id, "error": {"code": -32601, "message": "Method not found"}})
        except Exception as e:
            pass

if __name__ == "__main__":
    main()
