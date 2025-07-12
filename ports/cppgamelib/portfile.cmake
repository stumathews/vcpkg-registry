vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.8
    SHA512 1a1a26b16d8d833c5b5f234cd725977e5f50e9a7225bbf4343278cfacd23007fbee2f03c33074cb8a132ab1fa48b95950c2f21710109bab51f839903379ea235
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")