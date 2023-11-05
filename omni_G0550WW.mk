#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G0550WW device
$(call inherit-product, device/blu/G0550WW/device.mk)

PRODUCT_DEVICE := G0550WW
PRODUCT_NAME := omni_G0550WW
PRODUCT_BRAND := BLU
PRODUCT_MODEL := G91S
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu-rvo3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k69v1_64-user 11 RP1A.200720.011 1630677694 release-keys"

BUILD_FINGERPRINT := BLU/G91S/G0550WW:11/RP1A.200720.011/1630677694:user/release-keys
