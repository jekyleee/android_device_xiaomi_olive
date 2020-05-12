#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the common Open Source configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common AOSP configuration.
$(call inherit-product, vendor/aosp/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 720
KBUILD_BUILD_USER=ENG.Moh_H
EXPORT KBUILD_BUILD_HOST=Eng.Moh_H
# Inherit from olive device
$(call inherit-product, device/xiaomi/olive/device.mk)

PRODUCT_DEVICE := olive
PRODUCT_NAME := aosp_olive
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 9 PKQ1.190319.001 V11.0.6.0.PCNINXM release-keys" \
    PRODUCT_NAME="olive" \
    TARGET_DEVICE="olive"

BUILD_FINGERPRINT := Xiaomi/olive/olive:9/PKQ1.190319.001/V11.0.6.0.PCNINXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olive-user 9 PKQ1.190319.001 V11.0.6.0.PCNINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/olive/olive:9/PKQ1.190319.001/V11.0.6.0.PCNINXM:user/release-keys
