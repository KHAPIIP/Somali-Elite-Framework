# 🔱 Somali Elite Security Framework (SESF)
**Author:** Eng Khapiip (Cyber Security Expert)
**Version:** 1.0.0 (Open Source Edition)

## 🛡️ Overview
Somali Elite Security Framework is an advanced, lightweight C2 (Command and Control) framework designed for authorized penetration testing and ethical hacking operations. It utilizes a hybrid architecture combining a local Python server for real-time delivery and GitHub for remote payload hosting.

## 🚀 Key Features
* **Persistent Shell:** Automated persistence via Windows Startup.
* **Stubborn Connectivity:** Infinite reconnection loop if the session is interrupted.
* **Hybrid Delivery:** Payloads hosted on GitHub to bypass basic security filters.
* **Stealth Mode:** Encoded PowerShell commands to reduce visibility.
* **Global Access:** Capable of remote operations via Static IP or DDNS integration.

## 📁 Repository Structure
* `agent.ps1`: The primary persistence engine.
* `shell.ps1`: The reverse shell core with auto-reconnect logic.

## 🛠️ Setup & Installation
1. Clone the repository:
   ```bash
   git clone [https://github.com/KHAPIIP/Somali-Elite-Framework.git](https://github.com/KHAPIIP/Somali-Elite-Framework.git)
