# Copyright (C) 2014 The CyanogenMod Project
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
-include device/hp/tegra4-common/tegra4.mk

TARGET_SPECIFIC_HEADER_PATH := device/hp/tegra4-common/include

# Audio
BOARD_USES_ALSA_AUDIO := true

# CPU options
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/backlight/pwm-backlight/brightness\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/hp/tegra4-common/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/hp/tegra4-common/recovery/recovery.fstab


# TWRP
#ifneq ($(wildcard bootable/recovery-twrp/Android.mk),)
#RECOVERY_VARIANT := twrp
#DEVICE_RESOLUTION := 800x1280
#BOARD_HAS_FLIPPED_SCREEN := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_INTERNAL_STORAGE_PATH := "/data/media"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_NO_USB_STORAGE := true
#TW_BRIGHTNESS_PATH := /sys/class/backlight/pwm-backlight/brightness
#TW_MAX_BRIGHTNESS := 255
#endif


# Graphics
USE_OPENGL_RENDERER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/hp/tegra4-common/bluetooth


# Wifi driver
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WLAN_DEVICE           := wl18xx_mac80211
BOARD_SOFTAP_DEVICE         := wl18xx_mac80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_TI_0_8_X
BOARD_HOSTAPD_DRIVER        := NL80211
WIFI_DRIVER_MODULE_NAME     := "wlcore_sdio"
WIFI_FIRMWARE_LOADER        := ""

# SELinux
BOARD_SEPOLICY_DIRS := device/nvidia/$(TARGET_DEVICE)/sepolicy

BOARD_SEPOLICY_UNION := healthd.te \
    installd.te \
    netd.te \
    untrusted_app.te \
    vold.te \
    file_contexts \
    file.te
