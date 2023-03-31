# TWRP device tree for Xperia 10 II

adapted for Android 12 based on kernel info from from https://github.com/lineageos-on-pdx201 and twrpdtgen.

## Working

-   boots
-   adb connects
-   core partitions are mountable, magisk apk installs correctly

## Problems

-   some partitions aren't mounted [ ]
-   ALWAYS reboots back to recovery after booting into recovery once [ ]
-   backups and flash partitions aren't configured [ ]
-   FBE [ ]

## Compiling

```
# https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync

# include recovery in manifest or clone the repo to device/sony/pdx201
# [...]

# start compiling
. build/envsetup.sh

lunch twrp_pdx201-eng
mka recoveryimage
```

## Credits

-   https://github.com/TeamWin/android_device_xiaomi_ginkgo - Base device tree
-   https://github.com/lineageos-on-pdx201 - Android 12 bringup
