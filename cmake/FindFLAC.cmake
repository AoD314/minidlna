#
#  FLAC_FOUND - system has FLAC
#  FLAC_INCLUDE_DIRS - the FLAC include directory
#  FLAC_LIBRARIES - Link these to use FLAC
#

set(FLAC_FOUND FALSE)

find_path(FLAC_INCLUDE_DIRS
    NAMES FLAC/all.h
    PATHS
        /usr/include
        /usr/local/include
        /opt/local/include
        /sw/include
        /usr/include/libFLAC
        /usr/local/include/libFLAC
        /opt/local/include/libFLAC
        /sw/include/libFLAC
)

find_library(FLAC_LIBRARIES
    NAMES FLAC
    PATHS
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        /sw/lib
)

if (FLAC_LIBRARIES AND FLAC_INCLUDE_DIRS)
    set(FLAC_FOUND TRUE)
else()
    mark_as_advanced(FLAC_INCLUDE_DIRS FLAC_LIBRARIES)
endif()
