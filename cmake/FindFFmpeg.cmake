#
# Variable:
# FFmpeg_FOUND
# FFmpeg_LIBRARIES
# FFmpeg_INCLUDE
# FFmpeg_<component>_LIBRARY
#

set(ffmpeg_comonents avfilter avformat avcodec avutil avdevice swresample postproc swscale)  # avresample

macro(find_ffmpeg_component component_name short_name)
    find_library(FFmpeg_${component_name}_LIBRARY
        NO_DEFAULT_PATH
        NAMES ${short_name}
        PATHS
        ${CMAKE_SOURCE_DIR}/3rdparty/ffmpeg/install/lib/
        /app/lib/
        /usr/lib64/
    )

    if ("${short_name}" STREQUAL "postproc")
        set(header_name postprocess)
    else()
        set(header_name ${short_name})
    endif()

    find_path(FFmpeg_${component_name}_INCLUDE_DIR lib${short_name}/${header_name}.h
        NO_DEFAULT_PATH
        PATHS
        ${CMAKE_SOURCE_DIR}/3rdparty/ffmpeg/install/include/
        /app/include/
        /usr/include/
    )
endmacro()

set(FFmpeg_LIBRARIES)
set(FFmpeg_INCLUDE_DIRS)

foreach(component ${ffmpeg_comonents})
    find_ffmpeg_component(${component} ${component})

    if(FFmpeg_${component}_LIBRARY AND FFmpeg_${component}_INCLUDE_DIR)
        set(FFmpeg_${component}_FOUND 1)
        list(APPEND FFmpeg_LIBRARIES ${FFmpeg_${component}_LIBRARY})
        list(APPEND FFmpeg_INCLUDE_DIRS ${FFmpeg_${component}_INCLUDE_DIR})
        message(STATUS "Found: ${FFmpeg_${component}_LIBRARY} (${FFmpeg_${component}_INCLUDE_DIR})")
    else()
        message(WARNING "${component} library not found! ([${FFmpeg_${component}_LIBRARY}][${FFmpeg_${component}_INCLUDE_DIR}])")
    endif()
endforeach()

list(LENGTH FFmpeg_LIBRARIES FFmpeg_LIBRARIES_LEN)

if(${FFmpeg_LIBRARIES_LEN} GREATER 0)
    set(FFmpeg_FOUND)
    message(STATUS "Found: ${FFmpeg_LIBRARIES}")
else()
    message(FATAL_ERROR "FFmpeg library not found!")
endif()
