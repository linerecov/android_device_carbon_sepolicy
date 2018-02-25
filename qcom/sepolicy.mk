#
# This policy configuration will be used by all qcom products
# that inherit from aquariosROM
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/aquarios/sepolicy/qcom/dynamic \
    device/aquarios/sepolicy/qcom/system \
    device/aquarios/sepolicy/qcom/private
else
BOARD_SEPOLICY_DIRS += \
    device/aquarios/sepolicy/qcom/dynamic \
    device/aquarios/sepolicy/qcom/vendor
endif
