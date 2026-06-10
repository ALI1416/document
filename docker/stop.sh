#!/bin/bash

# stop.sh - 停止进程
# 用法: ./stop.sh <pid文件路径>
# 示例: ./stop.sh /path/pid

# 检查参数
if [ $# -ne 1 ]; then
  echo "用法: $0 <pid文件路径>"
  echo "示例: $0 /path/pid"
  exit 0
fi

PID_FILE="$1"

# 检查PID文件是否存在
if [ ! -f "$PID_FILE" ]; then
  echo "警告: PID文件不存在: $PID_FILE"
  exit 0
fi

# 读取PID
PID=$(cat "$PID_FILE")

echo "正在停止进程 [PID: $PID]"

# 检查进程是否存在
if ! kill -0 "$PID" 2>/dev/null; then
  echo "进程 $PID 不存在或已经停止"
  rm -f "$PID_FILE"
  exit 0
fi

# 第一阶段：正常关闭 (SIGTERM)
echo "发送 SIGTERM 信号给进程 $PID"
kill -TERM "$PID" 2>/dev/null

normal_check_count=0
NORMAL_MAX_CHECKS=6

while [ $normal_check_count -lt $NORMAL_MAX_CHECKS ]; do
  normal_check_count=$((normal_check_count + 1))
  echo "检查进程状态 [$normal_check_count/$NORMAL_MAX_CHECKS]"
  sleep 5

  if ! kill -0 "$PID" 2>/dev/null; then
    echo "进程 $PID 已成功停止"
    rm -f "$PID_FILE"
    exit 0
  fi
done

echo "正常关闭失败，尝试强制关闭"

# 第二阶段：强制关闭 (SIGKILL)
echo "发送 SIGKILL 信号给进程 $PID"
kill -KILL "$PID" 2>/dev/null

force_check_count=0
FORCE_MAX_CHECKS=6

while [ $force_check_count -lt $FORCE_MAX_CHECKS ]; do
  force_check_count=$((force_check_count + 1))
  echo "检查进程状态 [$force_check_count/$FORCE_MAX_CHECKS]"
  sleep 5

  if ! kill -0 "$PID" 2>/dev/null; then
    echo "进程 $PID 已被强制停止"
    rm -f "$PID_FILE"
    exit 0
  fi
done

# 如果仍然无法停止
echo "错误: 无法停止进程 $PID ，请手动检查并终止该进程"
exit 1
