vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/libmonad
    REF test2
    SHA512 84c1dbc793e1caa91485b69cc4b1130c06842b81eeda2b4ba99d3d4855ca6738e8af1d39c5f03c0311e160358b9578c09b7345ba0ab864c411407e8b764b7021
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "libmonad")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
