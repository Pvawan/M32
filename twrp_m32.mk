#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m32 device
$(call inherit-product, device/samsung/m32/device.mk)

PRODUCT_DEVICE := m32
PRODUCT_NAME := twrp_m32
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M325F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m32dd-user 12 SP1A.210812.016 M325FXXSBDXE2 release-keys"

BUILD_FINGERPRINT := samsung/m32dd/m32:12/SP1A.210812.016/M325FXXSBDXE2:user/release-keys
