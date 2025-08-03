vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.14
    SHA512 7e76f3f181f0c3ddfbdf0e7d458eb0a2855f2bcb5b81eb66abb58140bd28b45bc78c5d785020a95d68a633a2b5940ad81c1b9b8f376dc142c5f83a8a1c88802d
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")