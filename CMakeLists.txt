cmake_minimum_required( VERSION 3.7 )
project("nanolog")

set (CMAKE_CXX_STANDARD 11)

set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
set(THREADS_PREFER_PTHREAD_FLAG TRUE)
find_package(Threads REQUIRED)

add_subdirectory (src)
add_subdirectory (test)

