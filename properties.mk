#
# Properties for odessa
#

# BPF
# The full BPF backport currently bootloops before Recovery. Keep the kernel at
# OpenELA 4.14.357 commit 70aea3b5f901 and do not advertise 5.10 BPF support
# until a hardware-booting backport is restored. Android 16 cannot boot fully
# in this state because netbpfload rejects an unmodified 4.14 kernel.

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.physical.num=5

# Cutout
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_hide_display_cutout=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.sf.color_mode=0

# Sensor
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.hardware.sensors=odessa

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.sensors.mot_ltv=true \
    ro.vendor.sensors.glance_approach=false
