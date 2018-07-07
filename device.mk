#
# Copyright (C) 2018 The LineageOS Project
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

# call the proprietary setup
$(call inherit-product-if-exists, vendor/huawei/berkeley/berkeley-vendor.mk)

# Doze mode
PRODUCT_PACKAGES += \
    CustomDoze

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

PRODUCT_PACKAGES += \
    HwCamera2 \
    HotwordEnrollmentOKGoogleHI6403 \
    HotwordEnrollmentXGoogleHI6403

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1440

# Huawei Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/HwCamera2/lib/android.hidl.base@1.0.so:system/lib/android.hidl.base@1.0.so \
    $(LOCAL_PATH)/HwCamera2/lib64/android.hidl.base@1.0.so:system/lib64/android.hidl.base@1.0.so \
    $(LOCAL_PATH)/HwCamera2/lib64/libHwPostCamera_jni.so:system/lib64/libHwPostCamera_jni.so

PRODUCT_PACKAGES += \
    HwCamera2

# Inherit from kirin970-common
$(call inherit-product, device/huawei/kirin970-common/kirin970.mk)
