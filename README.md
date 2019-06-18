# MySQL Workbench Docker
Use docker to run MySQL Workbench.

# Usage
```
$ docker run -dt --privileged -p 5900:5900 liuzheng/mysqlworkbench-in-docker 
```

You can use vnc client to connect port 5900, the default password is `liuzheng`.

You can set environment `VNC_PASSWORD` to set the password.

# TODO
[] use environment define the screen size
[] auto resize the screen size
