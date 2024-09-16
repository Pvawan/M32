#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/samsung/m32

# Release name
PRODUCT_RELEASE_NAME := m32 

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m32 device
$(call inherit-product, device/samsung/m32/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_DEVICE := m32
PRODUCT_NAME := twrp_m32
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M325F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m32dd-user 12 SP1A.210812.016 M325FXXSBDXE2 release-keys"

BUILD_FINGERPRINT := samsung/m32dd/m32:12/SP1A.210812.016/M325FXXSBDXE2:user/release-keys
