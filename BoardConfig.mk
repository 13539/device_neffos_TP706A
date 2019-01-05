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

# Platform
TARGET_BOARD_PLATFORM := mt6739
TARGET_NO_BOOTLOADER := true
TARGET_BUILD_VARIANT := eng

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6739

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Kernel
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel-4.4
TARGET_KERNEL_CONFIG := TP706A_64_defconfig

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_KERNEL_OFFSET := 0x00008000
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
#BOARD_KERNEL_IMAGE_NAME := zImage-dtb
#TARGET_PREBUILT_KERNEL := device/neffos/TP706A/zImage-dtb
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=eng
TARGET_USES_64_BIT_BINDER := true
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
DEVICE_RESOLUTION := 720x1440
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1440
TW_ALLOW_PARTITION_SDCARD := true
TARGET_RECOVERY_FSTAB := device/neffos/TP706A/recovery/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEFAULT_LANGUAGE := ru
TW_DEVICE_VERSION := by andrwgldmn
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_ALWAYS_RMRF := false
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_MTP_DEVICE := /dev/mtp_usb
TW_HAS_MTP := true
TW_EXCLUDE_SUPERSU := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.0/file
TW_EXCLUDE_TWRPAPP := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT :="external_sd"
# Crypto
TW_INCLUDE_CRYPTO := true
