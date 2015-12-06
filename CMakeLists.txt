cmake_minimum_required (VERSION 2.6)
project (tommyds)

set (INCLUDE_DIR "${CMAKE_SOURCE_DIR}/tommyds")
set (SRC_DIR "${CMAKE_SOURCE_DIR}/tommyds")

include_directories("${INCLUDE_DIR}")

if (CMAKE_BUILD_TYPE STREQUAL "Release" OR CMAKE_BUILD_TYPE STREQUAL "release")
	#Debug Info to Release Mode
	SET(CMAKE_BUILD_TYPE RelWithDebInfo)
endif()

IF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
	if (CMAKE_BUILD_TYPE STREQUAL "Release" OR CMAKE_BUILD_TYPE STREQUAL "release")
		add_definitions(-O3 -fomit-frame-pointer -flto -march=native)
	endif()
ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")

set (TOMMYDS_SRC ${SRC_DIR}/tommy.c)

MESSAGE(STATUS "Building in mode: " ${CMAKE_BUILD_TYPE})

add_library(tommdyds ${TOMMYDS_SRC})
