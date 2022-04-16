# Copyright (C) 2021 The LineageOS Project
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

$(call inherit-product, build/target/product/sdk_phone_armv7.mk)

include vendor/lineage/build/target/product/lineage_generic_target.mk

# Enable mainline checking
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
	system/addon.d/70-velvet.sh \
	system/app/FlipendoPrebuilt/FlipendoPrebuilt.apk \
	system/etc/permissions/android.hardware.biometrics.face.xml \
	system/etc/permissions/privapp-permissions-com.crdroid.faceunlock.xml \
	system/etc/sysconfig/hiddenapi-whitelist-com.crdroid.faceunlock.xml \
	system/lib/faceunlock_vendor_dependencies.so \
	system/lib/libFaceDetectCA.so \
	system/lib/libMegviiUnlock-jni-1.2.so \
	system/lib/libMegviiUnlock.so \
	system/lib/libarcsoft-lib.so \
	system/lib/libarcsoft_faceid.so \
	system/lib/libarcsoftbase.so \
	system/lib/libmegface.so \
	system/lib/libmpbase.so \
	system/priv-app/FaceUnlockService/FaceUnlockService.apk \
	system/priv-app/FaceUnlockService/oat/arm/FaceUnlockService.odex \
	system/priv-app/FaceUnlockService/oat/arm/FaceUnlockService.vdex 

# Overrides
PRODUCT_NAME := lineage_sdk_phone_armv7
PRODUCT_MODEL := LineageOS Android SDK built for armv7
