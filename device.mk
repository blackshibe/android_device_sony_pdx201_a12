# Api
PRODUCT_SHIPPING_API_LEVEL := 29

# qcom decryption
PRODUCT_PACKAGES_ENG += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Custom ROM asserts
TARGET_OTA_ASSERT_DEVICE := pdx201

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
