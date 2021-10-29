#
# Copyright (C) 2018-2020 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)

# All components inherited here go to product image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_product.mk)

# Don't build super.img.
PRODUCT_BUILD_SUPER_PARTITION := false

# Inherit from common.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := rav
PRODUCT_MANUFACTURER := Motorola
PRODUCT_NAME := aosp_rav
PRODUCT_MODEL := motog(8)

PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_VENDOR_PRODUCT_NAME := rav

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="motorola rav_reteu/rav 10 QPJS30.63-35-1-15/37df17 user/release-keys"

BUILD_FINGERPRINT := motorola/rav_reteu/rav:10/QPJS30.63-35-1-15/37df17:user/release-keys
