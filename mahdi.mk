# Release name
PRODUCT_RELEASE_NAME := AndroidOne

# Inherit device configuration
$(call inherit-product, device/google/sprout/full_sprout.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mahdi_sprout
PRODUCT_DEVICE :=sprout
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := A1


# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-800x480.zip:system/media/bootanimation.zip
