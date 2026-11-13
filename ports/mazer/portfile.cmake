vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/mazerlib
    REF v0.4.11
    SHA512 f4f8115a76c13fb4618dbd20f0e7baba04c7f716cc33afd045917dc9f29d21ce149afeff5a8c9d315edf2555c76d5274ffcb677f76e8e62ea0e4b1d362b87e53 

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
