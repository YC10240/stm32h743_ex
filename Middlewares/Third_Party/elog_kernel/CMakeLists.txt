cmake_minimum_required(VERSION 3.15)

# elog_config port option
add_library(elog_kernel INTERFACE)
#add_subdirectory(elog_config)

########################################################################
target_include_directories(elog_kernel
    INTERFACE
    inc
)
target_sources(elog_kernel INTERFACE
    src/elog_async.c
    src/elog_buf.c
    src/elog_utils.c
    src/elog.c
    port/elog_port.c
)

target_link_libraries(elog_kernel
    INTERFACE
#        elog_config
)

