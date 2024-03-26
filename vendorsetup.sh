# Clone/Fetch Upstream Device Dependencies

# Vendor tree Unified
echo "Cloning Vendor Tree"
git clone https://github.com/GiovanYCringe-Experiments/android_vendor_samsung_a505f vendor/samsung/a505f 
echo ""

# Dependencies
echo "Cloning Dependencies Samsung"
rm -rf hardware/samsung;
git clone -b thirteen --single-branch https://github.com/PixelExperience/hardware_samsung hardware/samsung;
git clone https://github.com/LineageOS/android_hardware_samsung_nfc hardware/samsung/nfc
git clone -b lineage-20 --single-branch https://github.com/LineageOS/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt;
git clone -b lineage-20 --single-branch https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal hardware/samsung_slsi/scsc_wifibt/wifi_hal;
git clone -b lineage-20 --single-branch https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib;
git clone -b lineage-20 --single-branch https://github.com/LineageOS/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy
echo ""

# Framework
echo "Patching Framework"
rm frameworks/base/core/java/android/os/Build.java && cp device/samsung/a505f/patch/Build.java frameworks/base/core/java/android/os
echo ""

# Kernel
echo "Cloning Clang + Kernel"
#git clone https://gitlab.com/ThankYouMario/android_prebuilts_clang-standalone -b 11 prebuilts/clang/host/linux-x86/clang-r399163b1;
git clone -b Lineage-20 --single-branch https://github.com/Matti67/kernel_a50 kernel/samsung/a50
echo ""
