cmake_minimum_required(VERSION 3.24)

project(
	qt-syrec-editor
	LANGUAGES C CXX
	DESCRIPTION "A Qt editor for the reversible programming language SyReC"
)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)

include(cmake/ExternalDependencies.cmake)

# set the include directory for the build tree
set(QT_SYREC_EDITOR_INCLUDE_BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/include")

add_subdirectory(src)