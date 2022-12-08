echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/display
rm -rf packages/resources/devicesettings

echo 'Cloning Hals [1/4]'
# Hals
git clone https://github.com/SuperiorOS/android_hardware_qcom_audio.git -b thirteen-caf-sm8150  hardware/qcom-caf/sm8150/audio
git clone https://github.com/SuperiorOS/android_hardware_qcom_media.git -b twelve-caf-sm8150 hardware/qcom-caf/sm8150/media
git clone https://github.com/SuperiorOS/android_hardware_qcom_display.git -b twelve-caf-sm8150 hardware/qcom-caf/sm8150/display
git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b lineage-20.0 packages/resources/devicesettings

echo 'Cloning Vendor tree [2/4]'
# Vendor Tree
git clone https://github.com/kibria5/android_vendor_xiaomi_violet.git -b thirteen vendor/xiaomi/violet

echo 'Cloning Kernel tree [3/4]'
# Kernel Tree
git clone https://github.com/kibria5/android_kernel_xiaomi_violet.git -b thirteen kernel/xiaomi/violet

echo 'Cloning Proton clang [4/4]'
# Proton Clang
git clone https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton

echo 'Completed, Now proceeding to lunch'
