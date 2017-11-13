#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:20039680:e0cb8f4a143c815adac13a1f6fe880e8db93141b; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18872320:ddf58d6fceae75123ded7d8a7ce27cc970394015 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY e0cb8f4a143c815adac13a1f6fe880e8db93141b 20039680 ddf58d6fceae75123ded7d8a7ce27cc970394015:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
