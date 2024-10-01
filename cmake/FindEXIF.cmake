#
#  EXIF_FOUND - system has EXIF
#  EXIF_INCLUDE_DIRS - the EXIF include directory
#  EXIF_LIBRARIES - Link these to use EXIF
#  EXIF_DEFINITIONS - Compiler switches required for using EXIF
#

set(EXIF_FOUND FALSE)

find_path(EXIF_INCLUDE_DIRS
    NAMES exif-data.h
    PATHS
        /usr/include
        /usr/local/include
        /opt/local/include
        /sw/include
        /usr/include/libexif
        /usr/local/include/libexif
        /opt/local/include/libexif
        /sw/include/libexif
)

find_library(EXIF_LIBRARIES
    NAMES exif
    PATHS
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        /sw/lib
)

if (EXIF_LIBRARIES AND EXIF_INCLUDE_DIRS)
    set(EXIF_FOUND TRUE)
else()
    mark_as_advanced(EXIF_INCLUDE_DIRS EXIF_LIBRARIES)
endif()
