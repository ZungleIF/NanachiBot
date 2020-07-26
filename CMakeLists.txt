cmake_minimum_required (VERSION 3.6)
project(NanachiBot)
file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/pictures)
file(COPY assets/pictures DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
if(NOT SLEEPY_DISCORD_CMAKE)
    add_subdirectory(sleepy-discord ${CMAKE_CURRENT_BINARY_DIR}/sleepy-discord)
endif()

add_executable(NanachiBot
	src/main.cpp
)

target_link_libraries(NanachiBot
	sleepy-discord
)
