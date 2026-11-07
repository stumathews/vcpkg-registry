vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/mazerlib
    REF v0.4.10
    SHA512 5f7b94a40ae51431dcc169c791be4440be5ac016ddb4101d418b33c464d09fdc7dec18e2699c54d279cbf54d9e3ba13e091034dbce124bcc010a2fdc3859590c

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
