cmake_minimum_required(VERSION 3.10)
#project title and version
project(SSD1306Library_test_SD VERSION 1.0)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# set(CMAKE_SKIP_RPATH TRUE)

# Add the shared libraries
add_library(ssd1306_shared SHARED ssd1306.c linux_i2c.c)

# Add library source files
#add_library(ssd1306_static STATIC ssd1306.c linux_i2c.c)

# Add the executable
add_executable(ssd1306_bin main.c)

# Link the executable with the shared libraries
# Using shared library for dynamic advantages.
target_link_libraries(ssd1306_bin ssd1306_shared)

# Link the example program with the static library
#target_link_libraries(ssd1306_bin ssd1306_static)