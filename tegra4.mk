#
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

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG += mdpi hdpi xhdpi
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

-include vendor/hp/olive/olive-vendor.mk

# Overlay
#DEVICE_PACKAGE_OVERLAYS += \
#    device/hp/tegra4-common/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.tegratab \
    init.qvs.rc \
    init.tegratab.rc \
    init.usb.rc \
    init.environ.rc \
    init.tegratab.usb.rc \
    sensor_init.sh \
    init.hdcp.rc \
    init.recovery.rc \
    init.tf.rc \
    init_no_root_device.rc \
    init.tegratab_factory.rc \
    init.trace.rc 


# Enable repeatable keys in CWM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# NVIDIA
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.nvidia.nvsi.xml:system/etc/permissions/com.nvidia.nvsi.xml

# Lights
PRODUCT_PACKAGES += \
    lights.tegratab

# Power 
PRODUCT_PACKAGES += \
    power.tegratab

# Sensors
PRODUCT_PACKAGES += \
    sensor.tegratab

# idc
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/idc/touch.idc:system/usr/idc/touch.idc \
  $(LOCAL_PATH)/idc/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc

# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl
# \
#    $(LOCAL_PATH)/keylayout/Vendor_0955_Product_7210.kl:system/usr/keylayout/Vendor_0955_Product_7210.kl

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audioConfig_qvoice_icera_pc400.xml:system/etc/audioConfig_qvoice_icera_pc400.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    $(LOCAL_PATH)/audio/nvaudio_fx.xml:system/etc/nvaudio_fx.xml

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    libaudio-resampler \
    tinycap \
    tinymix \
    tinyplay \
    xaplay

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/camera/model_frontal.xml:system/etc/model_frontal.xml

PRODUCT_PACKAGES += \
    libnetcmdiface

# Enable Widevine drm service
PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Disable SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.selinux=disabled

# Common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version = 196609 \
    wifi.interface=wlan0 \
    ap.interface=wlan0 \
    persist.tegra.nvmmlite = 1 \
    persist.wlan.ti.calibrated = 0 \
    ro.sf.override_null_lcd_density = 1 \
    ro.sf.lcd_density=320 \
    persist.tegra.compositor=glcomposer \
    ro.input.noresample=1 \
    ro.com.google.clientidbase=android-nvidia \
    ro.zygote.disable_gl_preload=true \
    pbc.enabled=0 \
    pbc.log=0 \
    pbc.board_power_threshold=20000 \
    pbc.low_polling_freq_threshold=1000 \
    pbc.rails=cpu,core,dram,gpu \
    pbc.cpu.power=/sys/bus/i2c/devices/7-0045/power1_input \
    pbc.cpu.cap=/dev/cpu_freq_max \
    pbc.cpu.cap.af=/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies \
    pbc.core.power=/sys/bus/i2c/devices/7-0043/power1_input \
    pbc.dram.power=/sys/bus/i2c/devices/7-0049/power1_input \
    pbc.gpu.power=/sys/bus/i2c/devices/7-004b/power1_input \
    pbc.gpu.cap=/dev/gpu_freq_max \
    pbc.gpu.cap.af=/sys/devices/platform/host1x/gk20a.0/devfreq/gk20a.0/available_frequencies \
    af.resampler.quality = 4 \
    persist.tegra.didim.enable = 1 \
    persist.tegra.didim.video = 5 \
    persist.tegra.didim.normal = 3


