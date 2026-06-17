#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from pipa device.
$(call inherit-product, device/xiaomi/pipa/device.mk)

# Derpfest Flags
DERPFEST_BUILD_TYPE := Community
TARGET_EXCLUDE_BACKUPTOOL := false
TARGET_INCLUDE_ACCORD := false
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_QUICK_TAP := false
WITH_GMS := true

PRODUCT_NAME := lineage_pipa
PRODUCT_DEVICE := pipa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Pad 6

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/pipa_global/pipa:14/UKQ1.230917.001/OS2.0.14.0.UMZMIXM:user/release-keys
