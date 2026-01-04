vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/TemplateLibrary
    REF v0.6.2
    SHA512 cd088f6f6aeea7ac361c1937caa85df82e8717fa5f0d374620e515634f8ba4541f32f90789fa946359c9be658406bc9b44bb584701df4840ebf11fdbb12ac920 
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "testlib" CONFIG_PATH lib/cmake/testlib)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
