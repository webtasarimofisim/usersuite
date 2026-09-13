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
                        "tools": [{
                            "name": "verify_license",
                            "description": "Master Suite lisans ve sistem denetleyicisi.",
                            "inputSchema": {"type": "object", "properties": {}}
                        }]
                    }
                })
            elif req.get("method") == "tools/call":
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
            else:
                if req_id:
                    send_message({"jsonrpc": "2.0", "id": req_id, "error": {"code": -32601, "message": "Method not found"}})
        except Exception as e:
            pass

if __name__ == "__main__":
    main()
