#
# Copyright (C) 2012 The Android Open-Source Project
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

LOCAL_PATH := device/neffos/TP706A

#
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
#

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init.recovery.mt6739.rc:root/init.recovery.mt6739.rc \
    $(LOCAL_PATH)/recovery/init.recovery.usb.rc:root/init.recovery.usb.rc \
    $(LOCAL_PATH)/recovery/init.usb.configfs.rc:root/init.usb.configfs.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    ro.mount.fs=EXT4 \
    ro.mtkrc.path=/vendor/etc/init/hw/ \
    sys.usb.configfs=1 \
    sys.usb.config=mtp,adb \
    sys.usb.configfs=1

# Enable SuperSU
WITH_SU := true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
