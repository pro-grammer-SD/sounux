#!/bin/bash
set +e

echo "[+] 🛑 Stopping Waydroid session..."
waydroid session stop || true

echo "[+] 🛑 Stopping Waydroid network..."
sudo /usr/lib/waydroid/data/scripts/waydroid-net.sh stop || echo "[!] 😭 Failed to stop waydroid-net"

echo "[+] 🔄 Unloading kernel modules..."
for mod in xt_CHECKSUM iptable_mangle iptable_nat iptable_filter ip_tables; do
    sudo modprobe -r "$mod" && echo "[!] ✅ Unloaded mod: $mod" || echo "[!] ⚠️ Could not unload $mod or it was not loaded"
done

echo "[+] 🔃 Loading required kernel modules..."
for mod in ip_tables iptable_filter iptable_nat iptable_mangle xt_CHECKSUM; do
    sudo modprobe "$mod" && echo "[!] ✅ Loaded mod: $mod" || echo "[!] 😭 Failed to load $mod"
done

echo "[+] 🌐 Starting Waydroid network..."
sudo /usr/lib/waydroid/data/scripts/waydroid-net.sh start || echo "[!] 😫 waydroid-net failed"

echo "[+] 🛠️ Setting software rendering properties..."
waydroid prop set ro.hardware.gralloc default
waydroid prop set ro.hardware.egl swiftshader

echo "[+] 🔄 Applying configuration upgrade..."
sudo waydroid upgrade -o

echo "[+] 🛠️ Enabling multi-window mode..."
waydroid prop set persist.waydroid.multi_windows true

echo "[+] 🚗 Starting Waydroid session..."
waydroid session start &

echo "[+] 🕑 Waiting for Waydroid platform service..."
until waydroid show-full-ui > /dev/null 2>&1; do
    echo "[...] Waiting for waydroidplatform service..."
    sleep 1
done

echo "[+] 🚀 Launching Waydroid UI..."
waydroid show-full-ui
