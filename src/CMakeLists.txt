include_directories(BEFORE ${CMAKE_CURRENT_SOURCE_DIR})

# Create a library called "nanolog" which includes the source file "NanoLog.cpp".
# The extension is already found. Any number of sources could be listed here.
add_library (nanolog NanoLog.cpp)
target_link_libraries( nanolog Threads::Threads )

# Make sure the compiler can find include files for our Hello library
# when other libraries or executables link to Hello
target_include_directories (nanolog PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
