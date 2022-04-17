cmake_minimum_required(VERSION 3.18)

project(GeneratorExample LANGUAGES CXX C VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_custom_command(
    OUTPUT src/Generated.hpp
    COMMAND ${PROJECT_SOURCE_DIR}/generator.sh ${PROJECT_SOURCE_DIR}/Resources/data.txt > ${PROJECT_SOURCE_DIR}/src/Generated.hpp
    DEPENDS Resources/data.txt
    DEPENDS ${PROJECT_SOURCE_DIR}/generator.sh
)

file(GLOB_RECURSE SRC src/*.cpp src/*.hpp)
add_executable(${PROJECT_NAME} ${SRC})

add_custom_target(Generated DEPENDS src/Generated.hpp)
add_dependencies(${PROJECT_NAME} Generated)

