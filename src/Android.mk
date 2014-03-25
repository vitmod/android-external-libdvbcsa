
LOCAL_PATH:= $(call my-dir)

# libdvbcsa
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	dvbcsa_algo.c \
	dvbcsa_block.c \
	dvbcsa_bs_algo.c \
	dvbcsa_bs_block.c \
	dvbcsa_bs_key.c \
	dvbcsa_bs_stream.c \
	dvbcsa_stream.c \
	dvbcsa_bs_transpose.c \
	dvbcsa_key.c \
	dvbcsa_bs_transpose64.c

LOCAL_MODULE := libdvbcsa
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS += -DHAVE_CONFIG_H -Wall -O3 -fomit-frame-pointer -D_XOPEN_SOURCE=600
LOCAL_C_INCLUDES := external/libdvbcsa

LOCAL_SYSTEM_SHARED_LIBRARIES := libc

include $(BUILD_SHARED_LIBRARY)

