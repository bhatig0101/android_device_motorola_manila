$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := manila
PRODUCT_NAME := twrp_manila
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g35 5G
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola
