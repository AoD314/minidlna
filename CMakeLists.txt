cmake_minimum_required(VERSION 3.21)

project(
    minidlna
    VERSION 1.3.4
    LANGUAGES C
)

set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

include(ProjectDependencies)
include(CompilerOptions)

option(BUILD_KQUEUE          "Build KQUEUE"             OFF)

add_subdirectory(src)

# PACKAGE_NAME='MiniDLNA'
# PACKAGE_TARNAME='minidlna'
# PACKAGE_VERSION='1.1.3'


message(STATUS "-----------------------------------------------------------------------------")
message(STATUS "")
message(STATUS "Enviroment:")
message(STATUS "    SYSTEM:            ${CMAKE_SYSTEM_NAME}")
message(STATUS "    VERSION:           ${CMAKE_SYSTEM_VERSION}")
message(STATUS "    CMAKE:             ${CMAKE_VERSION}")
message(STATUS "")
message(STATUS "Compiler:")
message(STATUS "    C   VERSION:       ${CMAKE_C_COMPILER_VERSION}")
message(STATUS "    C   FLAGS:         ${CMAKE_C_FLAGS}")
message(STATUS "    C   FLAGS RELEASE: ${CMAKE_C_FLAGS_RELEASE}")
message(STATUS "    C   FLAGS DEBUG:   ${CMAKE_C_FLAGS_DEBUG}")
message(STATUS "    LINK_OPTIONS:      ${LINK_OPTIONS}")
message(STATUS "")
message(STATUS "BUILD:")
message(STATUS "    VERSION:           ${MAJOR_VERSION}.${YEAR_AND_QUARTER}.${PROTOCOL_VERSION}.${MICRO_VERSION}")
message(STATUS "    TYPE:              ${CMAKE_BUILD_TYPE}")
message(STATUS "    BUILD_KQUEUE:      ${BUILD_KQUEUE}")
message(STATUS "")
message(STATUS "Dependency:")
message(STATUS "")
message(STATUS "    Threads:           ${CMAKE_THREAD_LIBS_INIT} (${Threads_FOUND})")
message(STATUS "    OpenMP:            ${OpenMP_CXX_LIBRARIES} (${OpenMP_CXX_VERSION})")
message(STATUS "    Libevent:          ${Libevent_INCLUDE_DIRS} [${Libevent_LIBRARIES}]")
message(STATUS "    SQLite:            ${SQLite3_VERSION}")
message(STATUS "    JPEG:              ${JPEG_VERSION}")
message(STATUS "    EXIF:              ${EXIF_INCLUDE_DIRS}")
message(STATUS "    FFMPEG:            ${FFmpeg_LIBRARIES}")
message(STATUS "    Vorbis:            ${VORBIS_LIBRARY} (${VORBIS_INCLUDE_DIR})")
message(STATUS "    OGG:               ${OGG_LIBRARY} (${OGG_INCLUDE_DIR})")
message(STATUS "    FLAC:              ${FLAC_LIBRARY} (${FLAC_INCLUDE_DIR})")
message(STATUS "")
message(STATUS "-----------------------------------------------------------------------------")
message(STATUS "")

