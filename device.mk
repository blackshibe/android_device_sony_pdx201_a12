# Api
PRODUCT_SHIPPING_API_LEVEL := 29

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
