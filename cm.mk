# Inherit device configuration for olive.
$(call inherit-product, device/nvidia/olive/full_olive.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := cm_olive
