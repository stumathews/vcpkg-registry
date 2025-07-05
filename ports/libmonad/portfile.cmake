vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/libmonad
    REF test2
    SHA512 c2ba73417a29f7abb8df401b98cc2e52e0686b44ba1fdbc766fe3f1b57ef14050d094ad4cac51649ea02d95c8bf32aef25033a5a28beeac12729ed496708a67e
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "libmonad")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
