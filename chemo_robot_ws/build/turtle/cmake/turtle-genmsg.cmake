# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtle: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iturtle:/users/smahapat/chemo_robot_ws/src/turtle/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg" NAME_WE)
add_custom_target(_turtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtle" "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtle
  "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle
)

### Generating Services

### Generating Module File
_generate_module_cpp(turtle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtle_generate_messages turtle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg" NAME_WE)
add_dependencies(turtle_generate_messages_cpp _turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_gencpp)
add_dependencies(turtle_gencpp turtle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtle
  "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle
)

### Generating Services

### Generating Module File
_generate_module_lisp(turtle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtle_generate_messages turtle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg" NAME_WE)
add_dependencies(turtle_generate_messages_lisp _turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_genlisp)
add_dependencies(turtle_genlisp turtle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtle
  "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle
)

### Generating Services

### Generating Module File
_generate_module_py(turtle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtle_generate_messages turtle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/users/smahapat/chemo_robot_ws/src/turtle/msg/modeMsg.msg" NAME_WE)
add_dependencies(turtle_generate_messages_py _turtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_genpy)
add_dependencies(turtle_genpy turtle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(turtle_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(turtle_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(turtle_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(turtle_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(turtle_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(turtle_generate_messages_py geometry_msgs_generate_messages_py)
