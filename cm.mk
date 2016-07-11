# Inherit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

LOCAL_KERNEL := device/moto/clark/kernel

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/moto/clark/twrp.fstab:recovery/root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_clark
PRODUCT_BRAND := Android
PRODUCT_DEVICE := clark
PRODUCT_MODEL := XT1575
PRODUCT_MANUFACTURER := motorola
