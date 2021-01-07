# 编译文件
python3 -m compileall -b ./
# 判断执行结果
if [ $? -ne 0 ];then		
	echo "编译失败:"$?		
	exit 1
else				
	echo "编译成功,删除源码py文件"
	#  egrep命令用于在文件内查找指定的字符串。
	# 给命令传递参数的一个过滤器，也是组合多个命令的一个工具。
	# 查找并删除
        find ../test -name "*.py"|egrep -v 'wsgi.py'|xargs rm -rf
fi
find ../test -name "__pycache__" -o -name "wsgi.pyc"|xargs rm -rf
