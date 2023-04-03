# Api
PRODUCT_SHIPPING_API_LEVEL := 29

# A/B support
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier


AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true
    
# qcom decryption
TARGET_RECOVERY_DEVICE_MODULES += \
    qcom_decrypt \
    qcom_decrypt_fbe

PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

PRODUCT_PACKAGES += \
    bootctrl.trinket

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

TARGET_RECOVERY_DEVICE_MODULES := \
    bootctrl.trinket \
    libgptutils \
    libz \
    libcutils

# F2FS utilities
PRODUCT_PACKAGES += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    update_engine_sideload
    
# Custom ROM asserts
TARGET_OTA_ASSERT_DEVICE := pdx201

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
