#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt8766 \
    init.items.rc \
    meta_init.modem.rc \
    init.project.rc \
    multi_init.rc \
    init.sensor_1_0.rc \
    init.apps.rc \
    meta_init.project.rc \
    init.aee.rc \
    factory_init.items.rc \
    meta_init.connectivity.rc \
    init.mt6761.rc \
    factory_init.connectivity.rc \
    init.connectivity.rc \
    factory_init.rc \
    init.ago.rc \
    init.mt6761.usb.rc \
    init.modem.rc \
    factory_init.project.rc \
    init.mt8766.rc \
    meta_init.rc \
    init.rc \
    init.recovery.mt6761.rc \
    init.recovery.mt8766.rc \
    ueventd.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt8766:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt8766

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/acer/AcerOne8T482L/AcerOne8T482L-vendor.mk)
