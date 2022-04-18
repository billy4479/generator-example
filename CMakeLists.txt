cmake_minimum_required(VERSION 3.18)

project(GeneratorExample LANGUAGES CXX C VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_custom_command(
    OUTPUT Generated.hpp
    COMMAND ${PROJECT_SOURCE_DIR}/generator.sh 
            ${PROJECT_SOURCE_DIR}/Resources/data.txt 
            > Generated.hpp
    DEPENDS Resources/data.txt
    DEPENDS generator.sh
)

add_executable(${PROJECT_NAME} src/main.cpp)

add_custom_target(Generated DEPENDS Generated.hpp)
add_dependencies(${PROJECT_NAME} Generated)
target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_BINARY_DIR})
