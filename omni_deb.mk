#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)


# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration 
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_deb
PRODUCT_DEVICE := deb
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 7 2013 LTE
PRODUCT_MANUFACTURER := ASUS
PRODUCT_RESTRICT_VENDOR_FILES := false

# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/google/msm
TARGET_KERNEL_CONFIG := flo_defconfig   
TARGET_VARIANT_CONFIG := flo_defconfig
TARGET_SELINUX_CONFIG := flo_defconfig

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/deb/device.mk)
$(call inherit-product-if-exists, vendor/asus/deb/device-vendor.mk)
#$(call inherit-product-if-exists, vendor/qcom/proprietary/common/config/device-vendor.mk)
