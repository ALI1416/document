#!/bin/bash

# start.sh - 启动进程
# 用法: ./start.sh <启动命令> <pid文件路径>
# 示例: ./start.sh "java -jar demo.jar" /path/pid

# 检查参数
if [ $# -ne 2 ]; then
  echo "用法: $0 <启动命令> <pid文件路径>"
  echo "示例: $0 \"java -jar demo.jar\" /path/pid"
  exit 0
fi

START_COMMAND="$1"
PID_FILE="$2"

echo "正在启动进程"

# 在后台启动进程，使用nohup防止终端关闭时进程被终止
eval "nohup $START_COMMAND >/dev/null 2>&1 &"
STARTED_PID=$!

echo "进程已启动 [PID: $STARTED_PID]"

# 等待并检查进程是否正常运行
check_count=0
MAX_CHECKS=6

while [ $check_count -lt $MAX_CHECKS ]; do
  check_count=$((check_count + 1))
  echo "检查进程状态 [$check_count/$MAX_CHECKS]"
  sleep 5

  # 检查进程是否还在运行
  if ! kill -0 "$STARTED_PID" 2>/dev/null; then
    echo "错误: 进程启动失败，进程 $STARTED_PID 已退出"
    exit 1
  fi
done

# 进程正常运行，保存PID到文件
echo -n "$STARTED_PID" > "$PID_FILE"
echo "进程启动成功，PID已保存到: $PID_FILE"
exit 0
