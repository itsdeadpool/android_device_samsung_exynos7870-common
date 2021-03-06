LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp \
    Camera2Wrapper.cpp \
    Camera3Wrapper.cpp

LOCAL_STATIC_LIBRARIES := libbase libarect
LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils libcutils \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0

LOCAL_C_INCLUDES += \
    system/core/include \
    system/media/camera/include \
	frameworks/native/libs/arect/include \
	frameworks/native/libs/nativebase/include \
	frameworks/native/libs/nativewindow/include

LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_MODULE := camera.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
