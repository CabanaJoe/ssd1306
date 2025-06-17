# Setting up CMake for Jetson Orin Nano cross-compilation
# Ensure compilation targets the correct architecture

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(SYSROOT $ENV{SYSROOT_AARCH64})
set(CMAKE_SYSROOT ${SYSROOT})

# Correct full paths to your cross-compiler
set(CMAKE_C_COMPILER "aarch64-unknown-linux-gnu-gcc")
#set(CMAKE_CXX_COMPILER "/home/joey/x-tools/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-g++")

# Optional large file support (usually default)
add_definitions(-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64)

# Compiler flags (add more if needed)
set(CMAKE_C_FLAGS  "${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

# Linker flags (add more if needed)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS}")
set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS}")

link_directories(".")

# Restrict find commands to sysroot (important for cross-compiling)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
