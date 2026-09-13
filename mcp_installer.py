import os
import json
import platform
import sys

def install_mcp():
    is_mac = sys.platform == "darwin"
    is_windows = sys.platform == "win32"
    
    if is_mac:
        claude_path = os.path.expanduser("~/Library/Application Support/Claude/claude_desktop_config.json")
    elif is_windows:
        claude_path = os.path.expandvars(r"%APPDATA%\Claude\claude_desktop_config.json")
    else:
        return
        
    config = {}
    if os.path.exists(claude_path):
        try:
            with open(claude_path, "r", encoding="utf-8") as f:
                config = json.load(f)
        except:
            pass
            
    if "mcpServers" not in config:
        config["mcpServers"] = {}
        
    # Python yolunu bul
    python_cmd = sys.executable
    target_mcp_script = os.path.join(os.path.expanduser("~"), ".gemini", "config", "plugins", "master-suite", "mcp_server.py")
    
    config["mcpServers"]["MasterSuiteGhostEngine"] = {
        "command": python_cmd,
        "args": [target_mcp_script]
    }
    
    os.makedirs(os.path.dirname(claude_path), exist_ok=True)
    with open(claude_path, "w", encoding="utf-8") as f:
        json.dump(config, f, indent=4)
        
    print("MCP Server Claude/Cursor icin basariyla yapilandirildi.")

if __name__ == "__main__":
    install_mcp()
