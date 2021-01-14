# IP=`ifconfig | grep 'inet ' | grep -v '127.0.0.1' | awk -F ' ' '{print $2}'| awk -F':' '{print $2}'| head -n 1`     //获取IP
# 定义命令
IP=`ifconfig | grep 'inet ' | grep -v '127.0.0.1' | awk -F ' ' '{print $2}'`     //获取IP

MAX_mem=95
MAX_swap=20
Men=`free | awk '/Mem/ {print int($3/$2*100)}'`  //物理内存
SWAP=`free | awk '/Swap/ {print int($3/$2*100)}'`   //虚拟内存
    # 执行命令，并获取结果  -gt是大于的意思  -a 　与 -o　或
     if [ $Men -gt $MAX_mem -o $SWAP -gt $MAX_swap ];then
        echo "Men Warning" | /usr/local/mutt/bin/mutt -s "$IP Men Warning " 529603712@qq.com
     fi