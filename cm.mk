# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pico/pico.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/pico/overlay

# Include FM-Radio stuff
#$(call inherit-product, vendor/cm/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_pico
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC Explorer A310
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=IMM76L BUILD_FINGERPRINT=htc_asia_india/htc_pico/pico:2.3.5/GRJ90/171430.1:user/release-keys PRIVATE_BUILD_DESC="1.12.720.1 CL171430 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := pico
PRODUCT_VERSION_DEVICE_SPECIFIC :=
 
