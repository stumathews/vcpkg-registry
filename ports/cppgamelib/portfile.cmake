vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.51
    SHA512 e937beb6b6b5193b96e079178c199c4f1546a35d3227dbaae2e910ae285501d83fdcf0b6a7b763d8f698c1855e00a8c8ab11dfcb2f36fea77ee7c3f3ae5a7598
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
