# rabbits_msgs

[![CI](https://github.com/rabbits-robotics/rabbits_msgs/actions/workflows/ci.yml/badge.svg)](https://github.com/rabbits-robotics/rabbits_msgs/actions/workflows/ci.yml)

Rabbits の ROS 2 メッセージ定義。

| メッセージ | 用途 |
|---|---|
| `ReferenceCommand` | PC → ファームの指令。車体速度、車体姿勢（車高 0〜1、ロール、ピッチ。カメラ座標系）、関節の目標（URDF の関節名 + 位置 / 速度 / トルク / kp / kd）、モード（名前 + 値）。[rabbits_bridge](https://github.com/rabbits-robotics/rabbits_bridge) が rabcl の共通プロトコルに変換して送る。joint 系 6 配列は同じ長さ、mode 系 2 配列は同じ長さ。空の配列は「送らない」で、ファームは最後の値を保つ |
| `AttractsCommand` | beta 用の旧指令（車体速度 + yaw / pitch 角 + 4 モード）。beta を共通プロトコルに移行したあと削除する |
| `GameDataInput` / `GameDataRobot` | ゲーム側との入出力 |
