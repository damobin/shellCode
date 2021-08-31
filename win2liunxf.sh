# 介绍：将windows写的文件转换为linux格式
#
# 注意：无
# 功能：将单个或者整个文件夹中的文件转换
#
# 适用：centos6+
# 语言：中文



clea() {
    for i in `ls`
    do
        if [ -d $i ];then
            cd $i
            clea
            cd ..
        else
            dos2unix $i
        fi
    done
}


#主体
if [[ ! $1 ]];then
    echo "将windows写的文件转换成linux格式！"
    echo
    echo "bash xx.sh /root/nginx or /etc/passwd.txt"
    exit
else
    if [[ -e $1 ]];then
        if [[ -d $1 ]];then
            cd $1
            clea
        else
            dos2unix $1
        fi
    else
        echo "$1 not found"
    fi        
fi
