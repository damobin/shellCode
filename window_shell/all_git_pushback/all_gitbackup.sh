#!/bin/bash
function gitbackup_funs(){
	for file in `ls $1 -a`
	do
		if [ $file == ".." ] || [ $file == "." ] ;then
			continue
		fi
		
		if [ -d $1"/"$file ]	#获取目录的每一个单元 的相对执行路径  判断是否是目录
		then
			gitbackup_funs $1
		else
			if [ $file == ".gitignore" ]		#对于 node_modules 目录不进行处理
			then
				echo $file"存在git代码"
				cd  "$1"/"$file"
				git add .
				git commit -m "backup"
				git push
				cd  ..
			fi
		fi
	done
}

echo "git back All files yes or no?"
read Args
if [ "$Args" = "yes"  ]; then
	if [ $# != 1 ];then
		gitbackup_funs $1
	else
		gitbackup_funs .
	fi
fi

