# Release name
PRODUCT_RELEASE_NAME := mt2l03

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/mt2l03/device.mk)

# Device identifier - this must come after all inclusions
PRODUCT_DEVICE := mt2l03
PRODUCT_NAME := cm_mt2l03
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Ascend Mate 2
PRODUCT_MANUFACTURER := Huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=MT2L03
