$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common AOSP configuration.
$(call inherit-product, vendor/aosp/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 720

# Inherit from olive device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olive
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := aosp_olive
PRODUCT_MODEL := Redmi 8

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := olive
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V11.0.1.0.QCNCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/olive/olive:10/QKQ1.191014.001/V11.0.1.0.QCNCNXM:user/release-keys
