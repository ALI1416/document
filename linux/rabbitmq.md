# RabbitMQ

1. 安装`erlang`：`apt install erlang`，安装到了`/usr/lib/erlang/`
2. 安装`RabbitMQ`：`apt install rabbitmq-server`
3. 启用网页管理插件：`rabbitmq-plugins enable rabbitmq_management`
4. 添加用户：`rabbitmqctl add_user admin admin`
5. 设置用户权限：`rabbitmqctl set_user_tags admin administrator`
6. 访问<http://localhost:15672/>
7. 输入账号密码
8. 点击Admin
9. 点击用户admin
10. `Permissions`选项设置访问权限
