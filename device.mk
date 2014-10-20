$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/mt2l03/mt2l03-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/mt2l03/overlay

LOCAL_PATH := device/huawei/mt2l03
ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/recovery/etc/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_mt2l03
PRODUCT_DEVICE := mt2l03
