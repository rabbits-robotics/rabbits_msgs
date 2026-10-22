# PC → ファームの指令（rabcl::protocol の下りメッセージに対応する汎用型）
# joint_* の 6 配列は同じ長さ、mode_* の 2 配列は同じ長さ。空の配列は「送らない」を意味し、
# ファーム側は最後に受けた値を保つ。chassis_vel は常に送られる。
std_msgs/Header header

geometry_msgs/Vector3 chassis_vel   # x, y [m/s]、z = 回転 [rad/s]

string[] joint_name                 # URDF の関節名。bridge の YAML で関節番号に変換される
float32[] joint_position            # [rad]
float32[] joint_velocity            # [rad/s]
float32[] joint_effort              # [Nm] フィードフォワード
float32[] joint_kp
float32[] joint_kd

string[] mode_name                  # bridge の YAML でモード番号に変換される
uint8[] mode_value
