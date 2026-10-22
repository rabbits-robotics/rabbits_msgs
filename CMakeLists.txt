cmake_minimum_required(VERSION 3.8)
project(rabbits_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(rosidl_default_runtime REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

set(msg_files
  "msg/AttractsCommand.msg"
  "msg/GameDataInput.msg"
  "msg/GameDataRobot.msg"
  "msg/ReferenceCommand.msg"
)
# set(srv_files
#   "srv/CalcTwoFloats.srv"
# )
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  # ${srv_files}
  DEPENDENCIES std_msgs geometry_msgs
)

ament_export_dependencies(rosidl_default_runtime)
ament_export_dependencies(std_msgs)
ament_export_dependencies(geometry_msgs)

ament_package()
