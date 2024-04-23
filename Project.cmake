set(PROJECT_NAME http-cpp-service)
set(CMAKE_CXX_FLAGS_DEBUG "-O -ggdb")
set(THREADS_PREFER_PTHREAD_FLAG ON)

add_executable(${PROJECT_NAME} ${SOURCE_DIR}/main.cpp)

target_compile_options(
    ${PROJECT_NAME} PRIVATE
    ${MY_COMPILE_OPTIONS}
)

target_include_directories(
    ${PROJECT_NAME} PRIVATE
    ${SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/include
)

target_sources(
    ${PROJECT_NAME} PRIVATE
)

target_link_libraries(
    ${PROJECT_NAME} PRIVATE
    ${CMAKE_THREAD_LIBS_INIT}
)
