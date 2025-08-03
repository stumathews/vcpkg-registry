vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.15
    SHA512 474c497dcff5670ff0398fc3d4eb7b0f6495f91f4eaf4a3e4bb61d018ec119e0524870ae5f5b19f64eca805e73e6eab6aee1578fd7135b44cca9f2b5f2c7ff79
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")