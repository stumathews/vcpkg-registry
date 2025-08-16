vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/TemplateLibrary
    REF v0.4
    SHA512 6a58b3500965d29e5a157a9599df16776acd355c9c8f1910306eeb9a8dc1b0ae3a9e879be9ea66c169d073bfd29c1114db89da389103fe16f0a6bfec6ceca793
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")