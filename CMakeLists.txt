cmake_minimum_required(VERSION 3.25)

# 사용자 지정 cmake 모듈 경로 추가
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")

project(QtQuickTestBed)
add_subdirectory(src)
