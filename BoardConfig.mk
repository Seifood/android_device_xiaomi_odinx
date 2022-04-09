#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Inherit proprietary blobs
-include vendor/xiaomi/odinx/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/odinx

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := odin

# HIDL
ODM_MANIFEST_FILES := $(DEVICE_PATH)/manifest.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE := odin

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/odin
TARGET_KERNEL_CONFIG := vendor/odin-qgki_defconfig

# SHRP
SHRP_PATH := device/xiaomi/odin
SHRP_MAINTAINER := Droneship
SHRP_DEVICE_CODE := odinx
SHRP_REC_TYPE := Normal
SHRP_EXPRESS := true
SHRP_EXPRESS_USE_DATA := true
SHRP_DEVICE_TYPE := A/B
SHRP_AB := true
INC_IN_REC_MAGISK := true
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_DARK := true
SHRP_REC := /dev/block/bootdevice/by-name/recovery
