#!/bin/bash
function gitbackup_funs(){
	if [ $# -lt 2 ];then
		local deep=0
	else
		local deep=$2
	fi
	
	for file in `ls $1 -a`
	do
		if [ $file == ".." ] || [ $file == "." ] ;then
			continue
		fi
		
		if [ -d $1"/"$file ]	#获取目录的每一个单元 的相对执行路径  判断是否是目录
		then
		[ 0 -eq 1 ] &&{		#注释
			#一层
			if [ $deep -lt 2 ];then
				echo "No directory $1"/"$file"
				gitbackup_funs "$1"/"$file" 2
			fi
		}
			#两层
			if [ $deep -lt 2 ];then
				echo "round path = $1"/"$file  echo deep= $deep"
				gitbackup_funs "$1"/"$file" `expr $deep + 1`
			fi
			
			
		else
			if [ $file == ".gitignore" ]		#对于 node_modules 目录不进行处理
			then
				cd $1
				git add .
				git commit -m "backup"
				git push
				cd -
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

