#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include device/motorola/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/odessa

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/odessa_defconfig

# Kernel modules - Audio
TARGET_MODULE_ALIASES += \
    snd-soc-aw882xx.ko:snd_smartpa_aw882xx.ko

# Kernel modules - Recovery
RECOVERY_KERNEL_MODULES := \
    drivers/sensors/sensors_class.ko \
    drivers/input/touchscreen/nova_0flash_mmi/nova_0flash_mmi.ko \
    drivers/input/touchscreen/focaltech_0flash_mmi/focaltech_0flash_mmi.ko

BOARD_RECOVERY_KERNEL_MODULES_LOAD := \
    sensors_class.ko \
    nova_0flash_mmi.ko \
    focaltech_0flash_mmi.ko

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
