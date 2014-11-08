#!/bin/bash

export VENDOR=hp
export DEVICE=olive
# Comment these out if there is no common device tree for this device
export COMMON_DEVICE=tegra4-common
export BOARD_VENDOR=hp-tegra
export TARGET_BOARD_PLATFORM=tegra

../$COMMON_DEVICE/setup-makefiles.sh $@
