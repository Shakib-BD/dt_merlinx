#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/merlinx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_merlinx
PRODUCT_DEVICE := merlinx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9

# RisingTechOS Flags
RISING_CHIPSET := "Helio G85"
RISING_MAINTAINER := "Shakib_BD"
RISING_PACKAGE_TYPE := "VANILLA AOSP"
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_ENABLE_BLUR := false
TARGET_USE_PIXEL_FINGERPRINT := true

# RisingTechOS GMS Flags
WITH_GMS := false
TARGET_CORE_GMS := false
# extra flag under TARGET_CORE_GMS - extra packages for core build type (velvet and photos)
TARGET_CORE_GMS_EXTRAS := false
TARGET_USE_GOOGLE_TELEPHONY := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="merlin-user 11 RP1A.200720.011 V12.5.4.0.RJOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/merlin/merlin:11/RP1A.200720.011/V12.5.4.0.RJOMIXM:user/release-keys
