DLKM_DIR := $(TOP)/device/qcom/common/dlkm
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
ifeq ($(CONFIG_ARCH_YUPIK), y)
LOCAL_MODULE := aw882xx_k504.ko
else
LOCAL_MODULE := aw882xx_k419.ko
endif
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
include $(DLKM_DIR)/AndroidKernelModule.mk
