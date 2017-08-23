cmake_minimum_required( VERSION 3.7 )
project("nanolog")

set (CMAKE_CXX_STANDARD 11)

set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
set(THREADS_PREFER_PTHREAD_FLAG TRUE)
find_package(Threads REQUIRED)

#Bring the headers into the project
include_directories(SYSTEM
        /usr/include
        /usr/include/c++/5)

add_subdirectory (src)
add_subdirectory (test)

#Can manually add the sources using the set command as follows:
#set(SOURCES src/NanoLog.cpp)
#set(TEST_SOURCES test/non_guaranteed_nanolog_benchmark.cpp)

#add_library (nanolog STATIC ${SOURCES})
#target_link_libraries( nanolog Threads::Threads )

#add_executable(non_guaranteed_nanolog_benchmark ${TEST_SOURCES} ${SOURCES})
#target_link_libraries( non_guaranteed_nanolog_benchmark nanolog )
