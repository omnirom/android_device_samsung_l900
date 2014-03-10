#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni CDMA telephony parts
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit some common Omni configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit more device specific configurations
$(call inherit-product, device/samsung/l900/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_MODEL := SPH-L900
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_l900
PRODUCT_DEVICE := l900
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=t0ltespr \
    TARGET_DEVICE=t0ltespr \
    PRIVATE_BUILD_DESC="t0ltespr-user 4.3 JSS15J L900VPUBMK4 release-keys" \
    TARGET_DEVICE=t0ltespr BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.3/JSS15J/L900VPUBMK4:user/release-keys"
