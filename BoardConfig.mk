# inherit from the proprietary version
-include vendor/lge/vee7/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/vee7/include

TARGET_BOOTLOADER_BOARD_NAME := vee7

# Compiler flags
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a5
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a5
COMMON_GLOBAL_CFLAGS += -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
COMMON_GLOBAL_CFLAGS += -DNO_HW_VSYNC

# Compiler Optimization
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true

# Targets
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := vee7
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# Dalvik
TARGET_ARCH_LOWMEM := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/vee7
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := cyanogenmod_vee7_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=vee7 selinux=0

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1270874112
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1941962752
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 27
TARGET_USERIMAGES_USE_EXT4 := true

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USES_QCOM_BSP := true
TARGET_USES_ION := true

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Media
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Display
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/lge/vee7/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_DOESNT_USE_FENCE_SYNC := true
USE_OPENGL_RENDERER := true
HWUI_COMPILE_FOR_PERF := true

# Screenshot
BOARD_USE_MHEAP_SCREENSHOT := true

# Hardware
BOARD_HARDWARE_CLASS := device/lge/vee7/cmhw

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/vee7/bluetooth

# Light
TARGET_PROVIDES_LIBLIGHTS := true

# Webview
ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_FORCE_CPU_UPLOAD := true

# Wlan
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_CFG80211_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_CFG80211_MODULE_NAME := "cfg80211"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"

# FSTAB
TARGET_RECOVERY_FSTAB := device/lge/vee7/rootdir/fstab.vee7

# Charger
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"charger"'

# Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_vee7
TARGET_LIBINIT_DEFINES_FILE := device/lge/vee7/init/init_vee7.c

# For assert
TARGET_OTA_ASSERT_DEVICE := p710,vee7,P710

# Recovery
RECOVERY_VARIANT					:= omni
TARGET_RECOVERY_PIXEL_FORMAT 		:= RGBX_8888
TARGET_USE_CUSTOM_LUN_FILE_PATH 	:= /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE					:= /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_HAS_LARGE_FILESYSTEM 			:= true
TARGET_USERIMAGES_USE_EXT4			:= true
RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
DEVICE_RESOLUTION					:= 480x800
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_HAS_NO_MISC_PARTITION 		:= true
BOARD_HAS_FLIPPED_SCREEN			:= true
RECOVERY_FSTAB_VERSION 				:= 2
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_BRIGHTNESS_PATH					:= /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS 					:= 225
TARGET_RECOVERY_FSTAB 				:= device/lge/vee7/recovery.fstab
RECOVERY_SDCARD_ON_DATA 			:= true 
TW_EXTERNAL_STORAGE_PATH 			:= "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT 	:= "sdcard"
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 	:= "data"
