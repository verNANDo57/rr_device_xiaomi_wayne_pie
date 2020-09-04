#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# EAS_POWERHINT_VARIANT
EAS_POWERHINT_VARIANT := sdm660

# Inherit the fusion-common definitions
$(call inherit-product, device/xiaomi/wayne-common/wayne_common.mk)

# Device Path
WAYNE_PATH := device/xiaomi/wayne

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Device properties
$(call inherit-product, $(WAYNE_PATH)/wayne_prop.mk)

# Impositions
DEVICE_PACKAGE_OVERLAYS += \
    $(WAYNE_PATH)/overlay-device-specific\
    $(WAYNE_PATH)/overlay-RR-specific

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(WAYNE_PATH)

# Vendor files
$(call inherit-product, vendor/xiaomi/wayne/wayne-vendor.mk)