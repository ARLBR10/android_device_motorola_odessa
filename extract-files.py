#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_lib import lib_fixups as lib_fixups_default
from extract_utils.main import ExtractUtils, ExtractUtilsModule


module = ExtractUtilsModule(
    'odessa',
    'motorola',
    lib_fixups=lib_fixups_default,
    namespace_imports=[
        'hardware/motorola',
        'vendor/motorola/sm6150-common',
        'vendor/qcom/opensource/display',
    ],
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(module, 'sm6150-common', module.vendor)
    utils.run()
