#
# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_USES_QCNE := true

    ifneq ($(BUILD_TINY_ANDROID), true)
    BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
    BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    BOARD_CAMERA_LIBRARIES := libcamera
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAVE_QCOM_FM := true
    BOARD_HAS_QCOM_WLAN := true
    #BOARD_USES_GENERIC_AUDIO := true
    BOARD_WPA_SUPPLICANT_DRIVER := WEXT
    WPA_SUPPLICANT_VERSION := VER_0_6_X
    WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
    WIFI_SDIO_IF_DRIVER_MODULE_NAME := "librasdioif"
    WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""
    endif   # !BUILD_TINY_ANDROID

else
#    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true
endif # QC_PROP

# Enabling USE_DEFAULT_JS_ENGINE flag for v8 default engine,

USE_DEFAULT_JS_ENGINE := true

TARGET_HAVE_TSLIB := true

TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
# Try to use ASHMEM if possible (when non-MDP composition is used)
TARGET_GRALLOC_USES_ASHMEM := true

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
QCOM_TARGET_PRODUCT := msm7627a

TARGET_CORTEX_CACHE_LINE_32 := true

BOARD_KERNEL_BASE    := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
#Spare size is (BOARD_KERNEL_PAGESIZE>>9)*16
BOARD_KERNEL_SPARESIZE := 128

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_UNCOMPRESSED_KERNEL := true

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=qcom
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_EGL_CFG := device/qcom/$(TARGET_PRODUCT)/egl.cfg

BOARD_NO_SPEAKER := true # msm7627a doesn't have speaker
BOARD_NO_TOUCHSCREEN := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 122695680
BOARD_USERDATAIMAGE_PARTITION_SIZE := 122695680
BOARD_CACHEIMAGE_PARTITION_SIZE := 4096000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

