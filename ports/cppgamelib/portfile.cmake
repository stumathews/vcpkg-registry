vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.2.43
    SHA512 9b2c90ca0a4c2c32ea95e7b54c7376d62ee56c4812fc02646e5b66e2c8a8b4c2f560897377662563386ab313c69355e97bbbe016f87feaa661bcc1a48eb98f96 
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
