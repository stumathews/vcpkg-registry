vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.13
    SHA512 b1715cb8447d43b65043e3124bc5011bbb9a1cbb2e5d7d5f1216b0ea26cb54ac5ba77f9a8e2b3c30f98c9f0a2a284a1bfe0da4b0643f9014019c8b03695a1cbe
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")