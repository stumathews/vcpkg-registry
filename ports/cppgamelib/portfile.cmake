vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.32
    SHA512 786a83e65ba0d3c6226f83e7a0ba3d11eebcc27dd7fc7572a8e3f261852727ed0ca2a1c4c50d66b83166b022eba2a5193a9ba9fd5cd990dfb61c160fcebb91d0 
    HEAD_REF linux
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "cppgamelib" CONFIG_PATH lib/cmake/cppgamelib)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
