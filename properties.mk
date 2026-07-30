#
# Properties for odessa
#

# BPF
#
# The 4.14 kernel carries a hardware-validated backport of the 5.10 BPF
# subsystem. Android's netbpfload refuses to run on a kernel older than 5.4;
# this override declares the backported feature level. 5.10.239 matches the
# Xiaomi SM6125/SM6150 and OnePlus SM8150 msm-4.14 integrations.
#
# Never set this on a kernel without the backport: it is a feature claim, not a
# workaround, and makes the loader use BTF and map types absent from plain 4.14.
PRODUCT_VENDOR_PROPERTIES += \
    ro.bpf.kver_override=5.10.239

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
