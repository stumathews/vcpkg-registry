vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/libmonad
    REF test4
    SHA512 203d761868efb3d2f5e8f4b6f8cd3a0a2ba8cf3c0f025e86dfed3444fd3bf5b2e08a9e67db68f23bace99533a02a8798d0db4fb075fdc87e08fcec17bcdc575b
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "libmonad")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
