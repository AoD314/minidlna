
add_compile_options(-pipe)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    add_compile_options(
        -fipa-pure-const
        -Wabi
        -Wall
        -Warith-conversion
        -Wcast-align
        -Wcast-qual
        -Wconversion
        -Wdate-time
        -Wextra
        -Wfloat-equal
        -Wformat-overflow=2
        -Wformat=2
        -Wlogical-op
        -Wmissing-include-dirs
        -Wmissing-noreturn
        -Wnull-dereference
        -Wpedantic
        -Wredundant-decls
        -Wshadow
        -Wsuggest-attribute=const
        -Wsuggest-attribute=malloc
        -Wsuggest-attribute=noreturn
        -Wsuggest-attribute=pure
        -Wuninitialized
        -Wuninitialized
        -Wunused-const-variable=2
        -Wwrite-strings
    )
    #add_compile_options(-pedantic-errors)
endif()

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    add_compile_options(
        -fdiagnostics-show-template-tree
        -pedantic
        -Weverything
        -Wextra-tokens
    )
endif()

#add_compile_options(-Werror)


if(ENABLE_PROFILING)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}                     -pg -ggdb -fno-omit-frame-pointer -fno-inline ")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}       -pg -ggdb -fno-omit-frame-pointer -fno-inline ")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -pg -ggdb -fno-omit-frame-pointer -fno-inline ")
endif()
