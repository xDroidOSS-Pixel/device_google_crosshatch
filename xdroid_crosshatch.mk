#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Xdroid-OSS stuff.
XDROID_MAINTAINER := Sqrqzq.Julius
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/xdroid/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/device-xdroid.mk

## Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := xdroid_crosshatch
PRODUCT_DEVICE := crosshatch
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3 XL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
