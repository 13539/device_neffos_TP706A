# Release name
PRODUCT_RELEASE_NAME := TP706A

$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, device/neffos/TP706A/TP706A.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TP706A
PRODUCT_NAME := lineage_TP706A
PRODUCT_BRAND := Neffos
PRODUCT_MODEL := TP706A
PRODUCT_MANUFACTURER := TP-Link
