vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.39
    SHA512 5c3aff8b39bd9ee07516a25ad5d83edfb7c2b5b4014a8d9d0f9af1df656d8e2b5838ebd58109a7a21808dc74257724a84e5729ef5240f9dd1a6a28376d7e72ec 
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
