#
#  id3tag_FOUND - system has id3tag
#  id3tag_INCLUDE_DIRS - the id3tag include directory
#  id3tag_LIBRARIES - Link these to use id3tag
#

set(id3tag_FOUND FALSE)

find_path(id3tag_INCLUDE_DIRS
    NAMES id3tag.h
    PATHS
        /usr/include
        /usr/local/include
        /opt/local/include
        /sw/include
        /usr/include/libid3tag
        /usr/local/include/libid3tag
        /opt/local/include/libid3tag
        /sw/include/libid3tag
)

find_library(id3tag_LIBRARIES
    NAMES id3tag
    PATHS
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        /sw/lib
)

if (id3tag_LIBRARIES AND id3tag_INCLUDE_DIRS)
    set(id3tag_FOUND TRUE)
else()
    mark_as_advanced(id3tag_INCLUDE_DIRS id3tag_LIBRARIES)
endif()
