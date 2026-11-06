vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/libmonad
    REF v0.6
    SHA512 9696a4f2ef9a3506155097eb6d18f3f479bbd9913304494acc56a23e202bb7373ec93a0e943c5e17fc4eb46b05f47d33ec259ba7e97332dca2bffb13eb1e1ecb 
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
