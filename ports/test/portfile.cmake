vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/TemplateLibrary
    REF v0.2
    SHA512 ef335a16cbb33923230b3f2f34aa9dbda206c8f49bf61a9beab1aaf9f696ceee5152cfe0ed0f592ba845b78258ef0b3779d0cef933f7d08a5d90dfed94d44f83
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")