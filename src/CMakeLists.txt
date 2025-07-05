find_package(Qt6 REQUIRED COMPONENTS Core Widgets)
qt_standard_project_setup()

add_library(${PROJECT_NAME}-custom-qt-widgets)
target_sources(${PROJECT_NAME}-custom-qt-widgets
PUBLIC
	${QT_SYREC_EDITOR_INCLUDE_BUILD_DIR}/qtWidgets/circuit_view_widget.hpp
	${QT_SYREC_EDITOR_INCLUDE_BUILD_DIR}/qtWidgets/code_editor_widget.hpp
	${QT_SYREC_EDITOR_INCLUDE_BUILD_DIR}/qtWidgets/log_widget.hpp
	${QT_SYREC_EDITOR_INCLUDE_BUILD_DIR}/qtWidgets/main_widget.hpp
PRIVATE
	${CMAKE_CURRENT_SOURCE_DIR}/qtWidgets/circuit_view_widget.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/qtWidgets/code_editor_widget.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/qtWidgets/log_widget.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/qtWidgets/main_widget.cpp
)

message(${Qt6Widgets_INCLUDE_DIRS})
message(${Qt6Core_INCLUDE_DIRS})

target_include_directories(${PROJECT_NAME}-custom-qt-widgets PUBLIC ${QT_SYREC_EDITOR_INCLUDE_BUILD_DIR})
target_include_directories(${PROJECT_NAME}-custom-qt-widgets PRIVATE ${Qt6Widgets_INCLUDE_DIRS} ${Qt6Core_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME}-custom-qt-widgets PRIVATE Qt6::Core Qt6::Widgets)
set_target_properties(Qt6::Core PROPERTIES INTERFACE_COMPILE_OPTIONS "")

if (WIN32)
	add_executable(${PROJECT_NAME} WIN32 ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)
	set_target_properties(${PROJECT_NAME} PROPERTIES
		WIN64_EXECUTABLE ON
		MACOSX_BUNDLE OFF
	)
else()
	message(FATAL_ERROR "Only builds on windows are currently supported")
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE ${PROJECT_NAME}-custom-qt-widgets Qt6::Widgets)