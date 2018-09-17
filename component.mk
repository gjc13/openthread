COMPONENT_ADD_INCLUDEDIRS                   := \
	examples/platforms                         \
	include                                    \
	src/core                                   \
	src/ncp                                    \

COMPONENT_PRIV_INCLUDEDIRS := \
	src

COMPONENT_SRCDIRS         := \
	src/cli                  \
	src/core                 \
	src/core/api             \
	src/core/coap            \
	src/core/common          \
	src/core/crypto          \
	src/core/mac             \
	src/core/meshcop         \
	src/core/net             \
	src/core/thread          \
	src/core/utils           \
	src/ncp                  \
	examples/platforms/utils \

CFLAGS                                                                      += \
    -D_GNU_SOURCE                                                              \
    -DOPENTHREAD_CONFIG_FILE=\<openthread-config-esp32.h\>                     \
    -DOPENTHREAD_FTD=1                                                         \
    -DOPENTHREAD_PROJECT_CORE_CONFIG_FILE=\"openthread-core-esp32-config.h\"   \
    -DSPINEL_PLATFORM_HEADER=\"spinel_platform.h\"                             \
    -Wno-error=non-virtual-dtor

CXXFLAGS                                                                    += \
    -D_GNU_SOURCE                                                              \
    -DOPENTHREAD_CONFIG_FILE=\<openthread-config-esp32.h\>                     \
    -DOPENTHREAD_FTD=1                                                         \
    -DOPENTHREAD_PROJECT_CORE_CONFIG_FILE=\"openthread-core-esp32-config.h\"   \
    -DSPINEL_PLATFORM_HEADER=\"spinel_platform.h\"                             \
    -Wno-error=non-virtual-dtor

CPPFLAGS                                                                    += \
    -D_GNU_SOURCE                                                              \
    -DOPENTHREAD_CONFIG_FILE=\<openthread-config-esp32.h\>                     \
    -DOPENTHREAD_FTD=1                                                         \
    -DOPENTHREAD_PROJECT_CORE_CONFIG_FILE=\"openthread-core-esp32-config.h\"   \
    -DSPINEL_PLATFORM_HEADER=\"spinel_platform.h\"                             \
    -Wno-error=non-virtual-dtor

