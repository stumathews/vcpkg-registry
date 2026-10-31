vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.52
    SHA512 b12ab010dd0d39c6fa3462cf73677e0f1b30307c27c3a451f3267cea2d8aa4cf2b83a82db3075ef9504d9d550ce88e0b063cc2fe0a4bef2b7f492c7ce24b21ee 
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "cppgamelib" CONFIG_PATH lib/cmake/cppgamelib)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
