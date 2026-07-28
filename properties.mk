#
# Properties for odessa
#

# BPF
#
# The 4.14 kernel carries a backport of the 5.10 BPF subsystem (see
# kernel/motorola/sm6150, branch wip/bpf-backport-4.14.357), taken from the
# shared LineageOS msm-4.14 effort. Android's netbpfload refuses to run on a
# kernel older than 5.4 and this override is how it is told the required
# features are present. 5.10.239 is the level the backported code came from,
# and is the same value the xiaomi sm6125/sm6150 and oneplus sm8150 trees use.
#
# This must never be set on a kernel without that backport: it is a claim, not
# a workaround, and setting it alone only moves the failure later (the loader
# then takes the BTF path and uses map types the kernel would not have).
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
