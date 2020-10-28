

## nginx-hello-world模块编译和测试

- 模块安装
```
//需要源代码编译
# cd nginx-1.19.2
# ./configure --prefix=/usr/local/nginx --with-debug --with-cc-opt='-ggdb3 -O0' --add-module=/root/nginx-module/ngx-hello-world 
# make && make install
```

- 启动nginx
```
/usr/local/nginx/sbin/nginx  -c /usr/local/nginx/conf/nginx.conf
```

- 配置模块指令

```
 location / {
            hello_world on;
            root   html;
            index  index.html index.htm;
        }
```

```
# /usr/local/nginx/sbin/nginx  -s  reload
```

- 测试模块功能

```
[root@CentOS81 nginx-1.19.2]# curl 127.0.0.1
/*********** perrynzhou ********/
hello world,this is first nginx module
/*********** end ********/
[root@CentOS81 nginx-1.19.2]# 
```