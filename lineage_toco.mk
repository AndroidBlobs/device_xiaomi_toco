# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from toco device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := toco
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_toco
PRODUCT_MODEL := Mi Note 10 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := toco
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="toco-user 10 QKQ1.190825.002 V11.0.1.0.QFNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/toco_global/toco:10/QKQ1.190825.002/V11.0.1.0.QFNMIXM:user/release-keys
