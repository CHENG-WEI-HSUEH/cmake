cmake_minimum_required(VERSION 3.15)

project(OpenCVExample)

set(CAMKE_CXX_STANDARD 17)

find_package(OpenCV REQUIRED)

add_executable(${PROJECT_NAME}
	main.cpp)

target_link_libraries(${PROJECT_NAME} PRIVATE
	${OpenCV_LIBS})
