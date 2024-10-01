
#configure_file(${CMAKE_SOURCE_DIR}/conf/analyzer.config.in ${CMAKE_SOURCE_DIR}/conf/analyzer.config @ONLY)

unset(NETGEAR)

set(HDRS
    albumart.h
    avahi.h
    clients.h
    codelength.h
    config.h
    containers.h
    event.h
    getifaddr.h
    image_utils.h
    libav.h
    log.h
    metadata.h
    minidlnapath.h
    minidlnatypes.h
    minissdp.h
    minixml.h
    monitor.h
    options.h
    playlist.h
    process.h
    scanner.h
    scanner_sqlite.h
    sendfile.h
    sql.h
    tagutils/tagutils.h
    tivo_beacon.h
    tivo_commands.h
    tivo_utils.h
    upnpdescgen.h
    upnpevents.h
    upnpglobalvars.h
    upnphttp.h
    upnpreplyparse.h
    upnpsoap.h
    utils.h
    uuid.h
)

set(SRCS
    albumart.c
    avahi.c
    clients.c
    containers.c
    getifaddr.c
    # icons.c
    image_utils.c
    #kqueue.c
    log.c
    metadata.c
    minidlna.c
    minissdp.c
    minixml.c
    monitor.c
    monitor_inotify.c
    #monitor_kqueue.c
    options.c
    playlist.c
    process.c
    scanner.c
    select.c
    sql.c
    tagutils/tagutils.c
    # testupnpdescgen.c
    tivo_beacon.c
    tivo_commands.c
    tivo_utils.c
    upnpdescgen.c
    upnpevents.c
    upnpglobalvars.c
    upnphttp.c
    upnpreplyparse.c
    upnpsoap.c
    utils.c
    uuid.c
)

add_executable(minidlna ${SRCS} ${HDRS})
target_include_directories(minidlna PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
set_property(TARGET minidlna PROPERTY C_STANDARD 23)

target_link_libraries(minidlna ${MINIDLNA_LIBS_DEPS})
target_include_directories(minidlna PRIVATE ${MINIDLNA_INCL_DEPS})
