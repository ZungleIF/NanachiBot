cmake_minimum_required (VERSION 3.6)
project(NanachiBot)

if(NOT SLEEPY_DISCORD_CMAKE)
    add_subdirectory(sleepy-discord ${CMAKE_CURRENT_BINARY_DIR}/sleepy-discord)
endif()

message(STATUS "Copying directory assets")
file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/pictures)
file(COPY assets/pictures DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
if(EXISTS config.txt)
	message(STATUS "Copying config.txt")
	file(COPY config.txt DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
elseif()
	message(FATAL_ERROR "config.txt does not exist.\n
	Please copy config_sample.txt, make a new one, and rename it.")
endif()

add_executable(NanachiBot
	src/main.cpp src/myrandom.cpp src/config.cpp
)

target_link_libraries(NanachiBot
	sleepy-discord
)
