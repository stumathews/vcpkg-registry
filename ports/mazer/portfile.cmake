vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/mazerlib
    REF v0.4.8
    SHA512 80725e36d10a3aa386252e76f1d27835a1034cefc5373f05026bf407e41e2a73306f02a6f12a1b4acff4a00f6d2dc1c72651e7c87c2075ede097e2280d9449bc

    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "mazer" CONFIG_PATH lib/cmake/mazer)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
