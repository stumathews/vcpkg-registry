vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/mazerlib
    REF v0.41
    SHA512 2a1bbf08a3931beefe841cb6d5108e976ef0b5d54a48e32d449b7f13334cdf24b697d4cdeb8753133a2114d3937b35d788c42cb94c73b18ca16eb4788b298a6d

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
