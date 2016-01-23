# Release name
PRODUCT_RELEASE_NAME := vee7

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee7/vee7.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee7
PRODUCT_NAME := cm_vee7
PRODUCT_BRAND := lge
PRODUCT_MODEL := vee7
PRODUCT_MANUFACTURER := lge
