find_package(OpenGL REQUIRED)
include_directories(${OpenGL_INCLUDE_DIRS})
link_directories(${OpenGL_LIBRARY_DIRS})
add_definitions(${OpenGL_DEFINITIONS})
if(NOT OPENGL_FOUND) 
    message(ERROR " OPENGL not found!")
else()
    add_definitions(-DWITH_OPENGL)
    list(APPEND COMMON_LIBS ${OPENGL_LIBRARIES})
endif()
