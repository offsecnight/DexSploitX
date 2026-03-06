# 📱 Termux Setup Guide for DexSploitX

This guide helps you set up and run DexSploitX on Android using Termux.

## Prerequisites

```bash
# Update packages
pkg update && pkg upgrade

# Install required packages
pkg install python git openjdk-17 wget

# Install Python dependencies
pip install pillow
```

## Installation

```bash
# Clone repository
git clone https://github.com/offsecnight/DexSploitX.git
cd DexSploitX

# Install Python requirements
pip install -r requirements.txt
```

## Known Issues & Fixes

### Issue 1: aapt2 Syntax Error

**Error:**
```
W: /data/data/com.termux/files/usr/tmp/aapt2_*.tmp: 2: Syntax error: "(" unexpected
```

**Solution:**

The issue is with Termux's aapt2 binary. You need to use a compatible version:

```bash
# Download compatible aapt2 for Termux
cd Builder
wget https://github.com/iBotPeaches/Apktool/releases/download/v2.9.3/apktool_2.9.3.jar -O apktool.jar

# Or use older apktool version
wget https://github.com/iBotPeaches/Apktool/releases/download/v2.7.0/apktool_2.7.0.jar -O apktool.jar
```

### Issue 2: Java Not Found

```bash
# Check Java installation
java -version

# If not found, install
pkg install openjdk-17
```

### Issue 3: Permission Denied

```bash
# Give execute permission
chmod +x build.py
chmod +x ../DexSploitX.py
```

## Building APK on Termux

```bash
cd Builder
python build.py
```

**Note:** Building on Termux may be slower than on PC due to limited resources.

## Alternative: Build on PC

If you face persistent issues on Termux, consider:

1. Clone repo on your PC
2. Build APK on PC using the builder
3. Transfer the built APK to your Android device
4. Run the server (DexSploitX.py) on Termux

```bash
# On Termux (server only)
cd DexSploitX
python DexSploitX.py -i 0.0.0.0 -p 4444
```

## Recommended Workflow

### Option 1: Full Termux Setup
- Build and run everything on Android
- Slower but fully mobile

### Option 2: Hybrid Setup (Recommended)
- Build APKs on PC (faster)
- Run server on Termux (portable)
- Best of both worlds

## Troubleshooting

### Build Fails with "Execution failed"

Try using an older apktool version:

```bash
cd Builder
rm apktool.jar
wget https://github.com/iBotPeaches/Apktool/releases/download/v2.6.1/apktool_2.6.1.jar -O apktool.jar
```

### Out of Memory

Termux has limited RAM. Close other apps:

```bash
# Check available memory
free -h

# If low, restart Termux
exit
# Reopen Termux
```

### Keystore Issues

```bash
# Verify keystore exists
ls -la keystore/

# If missing, it should be in the repo now
# If still missing, create one:
keytool -genkey -v \
  -keystore keystore/keystore \
  -alias key0 \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000 \
  -storepass 12345678 \
  -keypass 12345678
```

## Performance Tips

1. **Use external storage** for better performance:
```bash
cd /sdcard
git clone https://github.com/offsecnight/DexSploitX.git
```

2. **Close unnecessary apps** before building

3. **Use a device with at least 4GB RAM** for smooth operation

4. **Consider using a PC** for building if you have many APKs to create

## Support

If you continue to face issues:
- Check [GitHub Issues](https://github.com/offsecnight/DexSploitX/issues)
- Ensure you're using the latest Termux version
- Try the hybrid approach (build on PC, run server on Termux)

---

**Made with ❤️ by NIGHTKING**

**For Authorized Security Testing Only**
