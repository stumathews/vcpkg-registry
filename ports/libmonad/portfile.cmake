vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/libmonad
    REF v0.7
    SHA512 dc19f14ac2dded2beca043a6c88e63eaba45507faefb11262081725b89b8cb7ba593dad89003ad964fc497841d2c235062b369384eaffbaff2165f57a4ace9d2
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
)

