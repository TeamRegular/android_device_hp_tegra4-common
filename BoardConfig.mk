# Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
# Build definitions common to all NVIDIA boards.

# If during build configuration setup i.e. during choosecombo or lunch or
# using $TOP/buildspec.mk TARGET_PRODUCT is set to one of Nvidia boards then
# REFERENCE_DEVICE is the same as TARGET_DEVICE. For boards derived from
# NVIDIA boards, REFERENCE_DEVICE should be set to the NVIDIA
# reference device name in BoardConfig.mk or in the shell environment.

# Adreno
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_TI_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/nvidia/tegratab/bluetooth
USE_OPENGL_RENDERER := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_TEGRA_VERSION := t114
TARGET_TEGRA_FAMILY := t11x
TARGET_CPU_VARIANT := cortex-a15
BOARD_BUILD_BOOTLOADER := true
TARGET_USE_DTB := true
TARGET_KERNEL_DT_NAME := tegra114-tegratab

# Kernel
BOARD_KERNEL_CMDLINE := "androidboot.selinux=permissive"
TARGET_KERNEL_SOURCE := kernel/nvidia/tegratab
#TARGET_KERNEL_CONFIG := cyanogenmod_tegratab_defconfig
#BOOTLOADER_SUPPORTS_DTB := true
# It can be overridden by an environment variable
#APPEND_DTB_TO_KERNEL ?= false

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/backlight/pwm-backlight/brightness\"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/nvidia/tegratab/recovery/recovery_keys.c
#TARGET_RECOVERY_FSTAB := device/nvidia/tegratab/recovery.fstab

# Wifi driver
BOARD_WLAN_DEVICE           := wl18xx_mac80211
BOARD_SOFTAP_DEVICE         := wl18xx_mac80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_TI_0_8_X
BOARD_HOSTAPD_DRIVER        := NL80211
WIFI_DRIVER_MODULE_NAME     := "wlcore_sdio"
WIFI_FIRMWARE_LOADER        := ""

