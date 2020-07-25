cmake_minimum_required (VERSION 3.6)
project(NanachiBot)

if(NOT SLEEPY_DISCORD_CMAKE)
	add_subdirectory(sleepy-discord)
endif()

add_executable(NanachiBot
	main.cpp
)

target_link_libraries(NanachiBot
	sleepy-discord
)
