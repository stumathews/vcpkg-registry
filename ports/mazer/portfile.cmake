vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/mazerlib
    REF v0.4.5
    SHA512 614abfde19479c944aba6d0e9b7ecb65ef1815868000117e041f87d1bc2b439f2b7269732ca67ea7fd7b77f7384d626e15d8be768dd71539a842d38c93e2278e 

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
