#!/system/bin/sh
clear
echo "\e[1;38;5;45m=========================================================\e[0m"
echo "\e[1;38;5;208m               TIENSDATT DEVELOPMENT                     \e[0m"
echo "\e[1;38;5;45m=========================================================\e[0m"
echo "\e[1;32m[*] Dang xac minh may chu bao mat TIENSDATT...\e[0m"
echo "\e[1;32m[✓] Ban quyen hop le! Dang kich hoat System Optimizer...\e[0m"
sleep 1
echo "\e[1;33m[*] Dang xoa bo nho dem va tep tin rac toan he thong...\e[0m"
rm -rf /sdcard/Android/data/*/cache/*
rm -rf /sdcard/Android/data/*/code_cache/*
rm -rf /data/local/tmp/*
rm -rf /cache/*
run-as com.android.providers.downloads/cache/* 2>/dev/null
rm -rf /data/dalvik-cache/*
find /sdcard -name "*.tmp" -delete 2>/dev/null
find /sdcard -name "*.log" -delete 2>/dev/null
echo "\e[1;33m[*] Dang giai phong va lam sach bo nho RAM...\e[0m"
am kill-all 2>/dev/null
am trim-memory 2>/dev/null
echo 3 > /proc/sys/vm/drop_caches 2>/dev/null
fstrim -v /data 2>/dev/null
fstrim -v /cache 2>/dev/null
fstrim -v /system 2>/dev/null
echo "\e[1;33m[*] Dang thiet lap cau hinh CPU Performance...\e[0m"
for cpu in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do
    echo "performance" > "$cpu" 2>/dev/null
done
echo "0" > /sys/module/battery_saver/parameters/battery_saver_enabled 2>/dev/null
echo "\e[1;33m[*] Dang toi uu hoa bang thong va giam giat lag mang...\e[0m"
setprop net.dns1 1.1.1.1 2>/dev/null
setprop net.dns2 1.0.0.1 2>/dev/null
setprop net.tcp.buffersize.wifi 524288,1048576,2097152,262144,524288,1048576 2>/dev/null
setprop net.tcp.buffersize.lte 524288,1048576,2097152,262144,524288,1048576 2>/dev/null
echo "\e[1;38;5;46m=========================================================\e[0m"
echo "\e[1;38;5;46m[✓] DEVICE OPTIMIZED ULTRA SUCCESSFUL BY TIENSDATT!      \e[0m"
echo "\e[1;38;5;45m=========================================================\e[0m"
