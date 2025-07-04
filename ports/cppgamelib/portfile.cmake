vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO stumathews/cppgamelib
    REF v1.0
    SHA512 bf07ca50825ed8f8f7dd93170a020bdd90a94988f51a1acd97cace2bd4d2bdb0ac6c362888e9e9b1335be7fe3da640d85f74266833d0bc4796e2fb31ca11c314
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_install_copyright("${SOURCE_PATH}/COPYING")