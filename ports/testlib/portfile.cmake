vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/TemplateLibrary
    REF v0.6.1
    SHA512 4f4dd07f9a9e6989bef4e3499b378e26a1c8cea9b3cba27fb15b3867103c828409d731c95875bd9cd8020ee0b0708326e6d82ca4cd18eb83aee34092525759e0
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "testlib" CONFIG_PATH lib/cmake/testlib)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
