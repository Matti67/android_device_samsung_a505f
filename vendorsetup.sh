git clone https://github.com/GiovanYCringe/device_samsung_a505f -b thirteen device/samsung/a505f;
git clone https://github.com/GiovanYCringe/kernel_a50 kernel/samsung/a50;
git clone https://github.com/GiovanYCringe/vendor_samsung vendor/samsung
rm -rf hardware/samsung;
git clone https://github.com/PixelExperience/hardware_samsung hardware/samsung;
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt;
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal hardware/samsung_slsi/scsc_wifibt/wifi_hal;
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib;
git clone https://github.com/LineageOS/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy;
git clone https://github.com/moto-common/platform_prebuilts_clang_host_linux-x86_clang-r383902 prebuilts/clang/host/linux-x86/clang-r383902;
rm frameworks/base/core/java/android/os/Build.java && cp device/samsung/a50-common/patch/Build.java frameworks/base/core/java/android/os
