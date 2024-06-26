cmake_minimum_required(VERSION 3.25)
project(FirstSample LANGUAGES CXX)

include(qt_util)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.6 COMPONENTS Quick REQUIRED)
qt_standard_project_setup()

set(PROJECT_SOURCES
    main.cpp
)

qt_add_executable(FirstSample ${PROJECT_SOURCES})

qt_add_qml_module(FirstSample
    URI FirstSample
    VERSION 1.0
    QML_FILES
        main.qml
        AudioInfoBox.qml
)

set_target_properties(FirstSample
    PROPERTIES
        WIN32_EXECUTABLE TRUE
)

target_link_libraries(FirstSample
    PUBLIC
        Qt6::Quick
)

qt_import_qml_plugins(FirstSample)
