#!/bin/bash
function replace_funs(){
	objfile=$2			#赋值语句不可以添加空格
	srcfile=$3
	for file in `ls $1`			#获取目录的每一个单元 存储到$file
	do
		if [ -d $1"/"$file ]	#获取目录的每一个单元 的相对执行路径  判断是否是目录
		then
			if [ $file == "node_modules" ]		#对于 node_modules 目录不进行处理
			then
				echo $file"此目录排除，不替换"
			else								#对于其他目录  进行函数递归处理  更换文件
				replace_funs $1"/"$file $objfile $srcfile
			fi
		else									#执行到此处  表示已经进入了目标文件存在的目录  输入的参数已经为 最终相对执行路径了
			if [ $file == "$objfile" ]			#$3被替换文件 #$2为源文件
			then			
				#替换文件里的$3为$2
				echo $1"/"$file "由$objfile内容变更为$srcfile内容  名字不变"
				#find -name $file | xargs perl -pi -e 's|$objfile|$srcfile|g'		#obj<--src
				cp $srcfile "$1"/"$file"
			else
				echo $1" no found  $objfile"
			fi
		fi
	done
}

echo "replace All files yes or no?"
read Args
echo "input erg: ./replace.sh  (path)  (objfile)  (srcfile)"
if [ "$Args" = "yes"  ]; then 
	replace_funs $1 $2 $3
fi

