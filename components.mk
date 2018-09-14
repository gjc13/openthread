COMPONENT_ADD_INCLUDEDIRS                   := \
	$(COMPONENT_PATH)/examples/platforms       \
	$(COMPONENT_PATH)/include                  \
	$(COMPONENT_PATH)/src/core                 \
	$(COMPONENT_PATH)/src/ncp                  \

COMPONENT_SRCDIRS := \
	$(COMPONENT_PATH)/src/cli                  \
	$(COMPONENT_PATH)/src/core                 \
	$(COMPONENT_PATH)/src/core/api             \
	$(COMPONENT_PATH)/src/core/coap            \
	$(COMPONENT_PATH)/src/core/common          \
	$(COMPONENT_PATH)/src/core/crypto          \
	$(COMPONENT_PATH)/src/core/mac             \
	$(COMPONENT_PATH)/src/core/meshcop         \
	$(COMPONENT_PATH)/src/core/net             \
	$(COMPONENT_PATH)/src/core/thread          \
	$(COMPONENT_PATH)/src/core/utils           \
	$(COMPONENT_PATH)/src/ncp                  \
	$(COMPONENT_PATH)/examples/platforms/utils \

CFLAGS                                                                      += \
    -D_GNU_SOURCE                                                              \
    -DOPENTHREAD_CONFIG_FILE=\<openthread-config-esp32.h\>                     \
    -DOPENTHREAD_FTD=1                                                         \
    -DOPENTHREAD_PROJECT_CORE_CONFIG_FILE=\"openthread-core-esp32-config.h\"   \
    -DSPINEL_PLATFORM_HEADER=\"spinel_platform.h\"                             \
    -Wno-error=non-virtual-dtor                                                \
    $(NULL)

CXXFLAGS                                                                    += \
    -D_GNU_SOURCE                                                              \
    -DOPENTHREAD_CONFIG_FILE=\<openthread-config-esp32.h\>                     \
    -DOPENTHREAD_FTD=1                                                         \
    -DOPENTHREAD_PROJECT_CORE_CONFIG_FILE=\"openthread-core-esp32-config.h\"   \
    -DSPINEL_PLATFORM_HEADER=\"spinel_platform.h\"                             \
    -Wno-error=non-virtual-dtor                                                \
    $(NULL)

CPPFLAGS                                                                    += \
    -D_GNU_SOURCE                                                              \
    -DOPENTHREAD_CONFIG_FILE=\<openthread-config-esp32.h\>                     \
    -DOPENTHREAD_FTD=1                                                         \
    -DOPENTHREAD_PROJECT_CORE_CONFIG_FILE=\"openthread-core-esp32-config.h\"   \
    -DSPINEL_PLATFORM_HEADER=\"spinel_platform.h\"                             \
    -Wno-error=non-virtual-dtor                                                \
    $(NULL)

