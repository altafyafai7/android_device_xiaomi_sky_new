#!/bin/bash
#Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# Clone BCR repository
echo "Cloning BCR repository..."
git clone https://github.com/xiaomi-sm4450-sky/vendor_bcr.git vendor/bcr

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_xiaomi_sky_kernel.git -b 16.0 device/xiaomi/sky-kernel

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_vendor_xiaomi_sky.git -b 16.0 vendor/xiaomi/sky

# Clone the firmware source
echo "Cloning firmware repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_vendor_xiaomi_sky-firmware.git -b OS2.0.9.0.VMWEUXM vendor/xiaomi/sky-firmware

# Clone the dolby repository
echo "Cloning dolby hardware repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_hardware_dolby.git hardware/dolby

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/xiaomi-sm4450-sky/android_hardware_xiaomi.git -b 16.0 hardware/xiaomi

# Clone the agm repository
echo "Cloning agm & pal repository..."
rm -rf hardware/qcom-caf/sm8450/audio/agm && git clone https://github.com/xiaomi-sm4450-sky/agm.git hardware/qcom-caf/sm8450/audio/agm 

rm -rf hardware/qcom-caf/sm8450/audio/pal && git clone https://github.com/xiaomi-sm4450-sky/arpal-lx.git hardware/qcom-caf/sm8450/audio/pal

# Removing Some Already Loaded Modules
echo "Removing some already loaded modules..."
rm -rf hardware/qcom-caf/sm8450/audio/graphservices/acdb
rm -rf hardware/qcom-caf/sm8450/audio/graphservices/ar_osal
rm -rf hardware/qcom-caf/sm8450/audio/graphservices/ar_util
rm -rf hardware/qcom-caf/sm8450/audio/graphservices/gpr
rm -rf hardware/qcom-caf/sm8450/audio/graphservices/gsl

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"