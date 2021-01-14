#!/bin/sh
while :
do
    view=`top -n 1 |grep 'HMView'`
    curdate=`date +"%Y-%m-%d %H:%M:%S"`
    # viewRes=$view 
    res=$view
    if [ -n "$res" ]; then
        echo ${curdate} ${res} >> test.log 
#     echo [INFO] ${curdate} ${viewRes} >> test.log 
    fi
    # if if [ $? -ne 0 ];then
    #     echo [INFO] ${curdate} $view >> test.log 
    # fi
    sleep 1
    # curdate=`date +"%Y-%m-%d %H:%M:%S"`
    # echo [INFO] ${curdate} >> test.log 
done

# view=`top -n 1 |grep 'HMView'`
# # 保存执行结果
# res=$view
# # 输出执行结果
# echo ${res}
# # echo "$view Men Warning "   >> test.log 

# 判断字符串是不是为空
# STRING=
 
# if [ -z "$STRING" ]; then
#  echo "STRING is empty"
# fi
 
# if [ -n "$STRING" ]; then
#  echo "STRING is not empty"
# fi