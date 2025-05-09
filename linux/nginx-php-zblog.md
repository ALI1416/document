# nginx

- 安装：`apt install nginx`
- pid文件：`/run/nginx.pid`
- 日志文件夹：`/var/log/nginx/`
- 首页文件夹：`/var/www/html/`
- 配置文件：`/etc/nginx/nginx.conf`

## PHP

- 安装：`apt install php-fpm`
- 配置文件夹：`/etc/php/8.3/`
- 新增nginx在http层配置

```ini
server {
  #首页跳转
  location / {
    root  /var/www/html;
    index index.php;
  }

  #PHP反向代理
  location ~ \.php$ {
    root          /var/www/html;
    fastcgi_pass  unix:/run/php/php8.3-fpm.sock;
    fastcgi_index index.php;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    include       fastcgi_params;
  }
}
```

- 创建文件`/var/www/html/1.php`，内容为`<?php phpinfo();?>`
- 重启nginx`systemctl restart nginx`
- 访问<http://localhost/1.php>

## Z-BlogPHP

- 安装`apt install php-mysql php-curl php-xml php-gd php-mbstring`
- 重启`systemctl restart php8.3-fpm`
- 下载源码<https://www.zblogcn.com/zblogphp/>
- 解压到`/var/www/html/blog`目录
- 修改权限`chmod -R 777 /var/www/html/blog`
- 访问<http://localhost/blog/index.php>
