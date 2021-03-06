# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

PRODUCT_RELEASE_NAME := deb

# Inherit some common ill stuff.
$(call inherit-product, vendor/illusion/config/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/illusion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

# GSM radio
$(call inherit-product, vendor/illusion/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := ill_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT="google/razorg/deb:4.4.3/KTU84L/1148727:user/release-keys" PRIVATE_BUILD_DESC="razorg-user 4.4.3 KTU84L 1148727 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/illusion/bootanimation/1080x1920.zip:system/media/bootanimation.zip
