LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	${LOCAL_PATH}/ixml/src/inc \
	${LOCAL_PATH}/ixml/inc \
	${LOCAL_PATH}/upnp/src/inc \
	${LOCAL_PATH}/upnp/src/threadutil \
	${LOCAL_PATH}/upnp/inc

LOCAL_SRC_FILES := \
	ixml/src/attr.c \
	ixml/src/document.c \
	ixml/src/element.c \
	ixml/src/ixml.c \
	ixml/src/ixmldebug.c \
	ixml/src/ixmlparser.c \
	ixml/src/ixmlmembuf.c \
	ixml/src/namedNodeMap.c \
	ixml/src/node.c \
	ixml/src/nodeList.c \
	upnp/src/threadutil/FreeList.c \
	upnp/src/threadutil/LinkedList.c \
	upnp/src/threadutil/ThreadPool.c \
	upnp/src/threadutil/TimerThread.c \
	upnp/src/ssdp/ssdp_ResultData.c \
	upnp/src/ssdp/ssdp_device.c \
	upnp/src/ssdp/ssdp_ctrlpt.c \
	upnp/src/ssdp/ssdp_server.c \
	upnp/src/soap/soap_device.c \
	upnp/src/soap/soap_ctrlpt.c \
	upnp/src/soap/soap_common.c \
	upnp/src/genlib/miniserver/miniserver.c \
	upnp/src/genlib/client_table/client_table.c \
	upnp/src/genlib/client_table/ClientSubscription.c \
	upnp/src/genlib/service_table/service_table.c \
	upnp/src/genlib/util/membuffer.c \
	upnp/src/genlib/util/strintmap.c \
	upnp/src/genlib/util/upnp_timeout.c \
	upnp/src/genlib/util/util.c \
	upnp/src/genlib/net/sock.c \
	upnp/src/genlib/net/http/httpparser.c \
	upnp/src/genlib/net/http/httpreadwrite.c \
	upnp/src/genlib/net/http/statcodes.c \
	upnp/src/genlib/net/http/webserver.c \
	upnp/src/genlib/net/http/parsetools.c \
	upnp/src/genlib/net/uri/uri.c \
	upnp/src/gena/gena_device.c \
	upnp/src/gena/gena_ctrlpt.c \
	upnp/src/gena/gena_callback2.c \
	upnp/src/api/ActionComplete.c \
	upnp/src/api/ActionRequest.c \
	upnp/src/api/Discovery.c \
	upnp/src/api/Event.c \
	upnp/src/api/EventSubscribe.c \
	upnp/src/api/FileInfo.c \
	upnp/src/api/StateVarComplete.c \
	upnp/src/api/StateVarRequest.c \
	upnp/src/api/SubscriptionRequest.c \
	upnp/src/api/UpnpString.c \
	upnp/src/api/upnpapi.c \
	upnp/src/api/upnptools.c \
	upnp/src/uuid/md5.c \
	upnp/src/uuid/sysdep.c \
	upnp/src/uuid/uuid.c \
	upnp/src/urlconfig/urlconfig.c \
	upnp/src/inet_pton.c

LOCAL_MODULE := libupnp
LOCAL_MODULE_TAGS := eng
LOCAL_CFLAGS := -DHAVE_CONFIG_H -DNDEBUG -DIXML_HAVE_SCRIPTSUPPORT

include $(BUILD_STATIC_LIBRARY)

#include $(CLEAR_VARS)

#LOCAL_SRC_FILES := \
	#upnp/sample/linux/tv_combo_main.c \
	#upnp/sample/common/tv_device.c \
	#upnp/sample/common/tv_ctrlpt.c \
	#upnp/sample/common/sample_util.c

#LOCAL_MODULE := tv_device
#LOCAL_MODULE_TAGS := eng

#LOCAL_C_INCLUDES := \
	#${LOCAL_PATH}/ixml/src/inc \
	#${LOCAL_PATH}/ixml/inc \
	#${LOCAL_PATH}/upnp/src/inc \
	#${LOCAL_PATH}/upnp/src/threadutil \
	#${LOCAL_PATH}/upnp/inc \
	#${LOCAL_PATH}/upnp/sample/common

#LOCAL_CFLAGS :=
## LOCAL_SYSTEM_SHARED_LIBRARIES := libc
#LOCAL_STATIC_LIBRARIES := libupnp

#include $(BUILD_EXECUTABLE)
