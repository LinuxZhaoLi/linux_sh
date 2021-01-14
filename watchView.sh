# IP=`ifconfig | grep 'inet ' | grep -v '127.0.0.1' | awk -F ' ' '{print $2}'| awk -F':' '{print $2}'| head -n 1`     //获取IP
# 定义命令
IP =`top -n 1 |grep 'HMView'`     //获取IP

while true
    do 
       echo ${IP} >> 1.txt
    # 执行命令，并获取结果  -gt是大于的意思  -a 　与 -o　或
    sleep 2
    done