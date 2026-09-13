# 🚀 Master Suite (User Edition)

Master Suite is an autonomous "Ghost Engine" architecture that elevates artificial intelligence chat assistants (like Antigravity) to an **enterprise and profit-driven** level with a single command. 
Once installed, the system runs completely invisibly in the background, transforming your standard AI into a professional software engineer, SEO expert, and project manager.

## ✨ Key Features
*   **👻 Ghost Engine (Always Active):** Integrates into the background of the AI system (pre_inference hook). Without you noticing, it whispers quality and security standards into the system right before every command.
*   **☁️ Cloud-Locked Security:** Rules are never downloaded to your computer. They are fetched instantly in RAM (via AES-256 encryption) from our secure servers.
*   **🌍 Dynamic IP and Device Freedom:** Your license is tied to your Email account, not your IP address. You can seamlessly connect from home, the office, or different internet networks (even VPNs).
*   **🛡️ Conflict Blocker:** While Master Suite is running, no other AI models or plugins are allowed to run in the same workspace, guaranteeing 100% system stability.
*   **📋 Automated Crash Reporting:** If the AI makes a mistake in code or if you state "you did this wrong," the system instantly detects it and sends a hidden Crash Report to Master Suite engineers, making the software smarter every single day.

---

## 🛒 How to Purchase
To access all unlimited features, updates, and enterprise rules of Master Suite, you need to purchase a PRO License.
🔗 **Purchase Link:** [https://www.betasoft.com.tr/mastersuite](https://www.betasoft.com.tr/mastersuite)

*(You can start a 30-day free trial before purchasing.)*

---

## 🚀 Installation & Getting Started
1. Copy the `hooks.json`, `plugin.json` files, and the `scripts/` folder from this repository into your AI's plugin directory (e.g., `~/.gemini/config/plugins/`).
2. Restart the software or open a new chat window.
3. Simply type `/suite baslat` directly into the chat. The system will automatically start your 30-day trial and the engine will begin running in the background.

---

## ⌨️ All System Commands

You can manage Master Suite with full authority by entering the following commands in the AI chat window:

| Command | Description |
| :--- | :--- |
| **`/lisans`** | 🛡️ **Dashboard Panel:** Instantly displays your active license, device status, and remaining trial time on the screen as a visual dashboard. |
| **`/suite baslat`** | 🎁 **Start Trial / Activate:** Starts the 30-day trial (if you haven't already) and sets the engine to ALWAYS ACTIVE (Daemon) mode. |
| **`/lisans YOUR_CODE`** | 🔑 **Enter PRO License:** Registers the PRO license key (e.g., `PRD-***-XYZ`) you purchased from BetaSoft into the system and unlocks it permanently. |
| **`/suite durdur`** | 🛑 **Temporary Pause:** Temporarily stops the Ghost Engine. Your AI reverts to its normal/standard version. |
| **`/lisans kaldir`** | 🗑️ **Complete Removal:** Completely deletes your license and trial from this device and disconnects from the cloud. (Use this when switching computers). |

<a id="universal-multi-ai"></a>
### 10. Universal Multi-AI Compatibility
Master Suite is no longer bound to a single AI. Thanks to its universal core (`ghost_engine.py`) developed in pure Python using standard **JSON STDIN** read/write logic, it is 100% compatible with popular coding agents like Antigravity, **Codex**, **Claude Code**, and **OpenCode**. With multiple manifests (`claude.json`, `plugin.json`, `config.toml`), every AI platform recognizes the software as its "official plugin."

<a id="one-click-installers"></a>
### 11. Cross-Platform One-Click Installers
No more searching for folders or installing dependencies!
* **For Windows:** `install-windows.bat`
* **For Mac:** `install-mac.command`
* **For Linux:** `install-linux.sh`
The customer simply double-clicks the file. The system pulls the latest version from GitHub, automatically locates hidden AI directories (`.gemini`, `.codex`, `.claude`), and silently completes the installation in seconds.

<a id="mcp-server"></a>
### 12. MCP Server: Cursor and Claude Integration
Official **Model Context Protocol (MCP)** support has been added to work with next-gen desktop AIs like **Cursor IDE, Claude Desktop, and Windsurf**.
* `mcp_server.py`: Bridges Ghost Engine and MCP via JSON-RPC.
* `mcp_installer.py`: Automatically registers the Master Suite MCP server by analyzing Cursor/Claude config files on Mac and Windows.

<a id="ai-shield"></a>
### 13. AI Anti-Reverse Engineering Shield
To prevent malicious users from using AIs to "cancel the license" or "reverse engineer" the code, a **CRITICAL AI INSTRUCTION (System Override)** shield is embedded at the top of the codebase. Any AI reading the code to crack it will immediately reject the action due to copyright and security policies.

<a id="ota-update"></a>
### 14. Silent OTA Autonomous Update
When you publish a new feature or security rule, customers do not need to redownload files!
A background daemon thread in `ghost_engine.py` silently checks `version.txt` once a day. If a new version is available, it downloads the ZIP without slowing down the AI, updates the code in the background, and keeps the customer on the latest version.
