<<'COMMENT'
Shell 脚本（shell script），shell 和 shell script 是两个不同的概念。

echo "hello world!"

命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
中间不能有空格，可以使用下划线（_）。
不能使用标点符号。
不能使用bash里的关键字（可用help命令查看保留关键字）。
your_name="runoob.com"
echo ${your_name}

for file in $(ls etc/) ; do
	echo ${file}
done
推荐给所有变量加上花括号，这是个好的编程习惯。 使用变量的时候才加美元符（$）。 
for skill in Ada Coffe Action Java; do
	echo "I am good at ${skill}Script"
done

myUrl="http://www.google.com"
readonly myUrl
myUrl="http://www.runoob.com"
unset myUrl
#输出为空
echo ${myUrl} 

your_name='runoob'
str="Hello, I know you are \"$your_name\"! \n"
echo -e $str

your_name='runoob'
greeting="hello, $your_name !"
greeting2="hello, '$your_name' !"
greeting3="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1 $greeting2 $greeting3
#结果hello, runoob ! hello, runoob ! hello, 'runoob' ! hello, runoob !

your_name='runoob'
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2 $greeting_3
#hello, runoob ! hello, ${your_name} 

your_name='runoob'
echo ${#your_name} #获取字符串长度6

string='runoob is a great site'
echo `expr index "$string" io` #获取字符串io首先出现的位置4

string='runoob is a great site'
echo `expr index "$string" io` #获取字符串io首先出现的位置4
echo ${string:1:4} #unoo

#数组
array_name=(value0 value1 value2 value3)
array_name=(
value0
value1
value2
value3
)
array_name[0]=value0
array_name[1]=value1
array_name[n]=valuen

valuen=${array_name[n]}
#获取数组中所有的元素
echo ${array_name[@]}

# 取得数组元素的个数
length=${#array_name[@]}
# 或者
length=${#array_name[*]}
# 取得数组单个元素的长度
lengthn=${#array_name[n]}

cho "Shell 传递参数实例！";
echo "执行的文件名：$0"; #文件名
echo "第一个参数为：$1"; #第一个参数名
echo "第二个参数为：$2";
echo "第三个参数为：$3";

#sh hello.sh 2 3 4
echo "Shell 传递参数实例！"; 
echo "第一个参数为：$1"; #第一个参数 2
echo "参数个数为：$#";  #参数的个数3
echo "传递的参数作为一个字符串显示：$*"; #参数作为字符串显示 "2 3 4"
echo "传递的参数作为一个字符串显示：$@" #参数作为字符串显示"2" "3" "4"

#输出2 3 4
for i in "$*"; do
   echo $i
done
#输出2
#3
#4
for i in "$@"; do
   echo $i
done

if [ -n "$1" ]; then
   echo "包含第一个参数"
else
   echo "没有包含第一个参数"
fi
[ $var -eq 0 ] #一个变量是否为0
[ $var -ne 0 ]  # 当 $var 不等于 0 时，返回真
[ $var1 -ne 0 -a $var2 -gt 2 ]  # 使用逻辑与 -a
[ $var1 -ne 0 -o $var2 -gt 2 ]  # 使用逻辑或 -o
[ -e $var ] #文件是否存在
[ -d $var ] #是否是目录
[[ $var1 = $var2 ]]/ [[ $str1 == $str2 ]] #字符串比较
[ -f $file_var ] #变量 $file_var 是一个正常的文件路径或文件名 (file)，则返回真
[ -x $var ] #变量 $var 包含的文件可执行 (execute)，则返回真
[ -e $var ] #变量 $var 包含的文件存在 (exist)，则返回真
[ -c $var ] #变量 $var 包含的文件是一个字符设备文件的路径 (character)，则返回真
[ -b $var ] #变量 $var 包含的文件是一个块设备文件的路径 (block)，则返回真
[ -w $var ] #变量 $var 包含的文件可写(write)，则返回真
[ -r $var ] #变量 $var 包含的文件可读 (read)，则返回真
[ -L $var ] #变量 $var 包含是一个符号链接 (link)，则返回真

fpath="etc/passwd.txt"
if [ -e $fpath ]; then
   echo File exits;
else
   echo Does not exit;
fi
[[ $str1 != $str2 ]] #如果 str1 与 str2 不相同，则返回真
[[ -z $str1 ]] #如果 str1 是空字符串，则返回真
[[ -n $str1 ]] #如果 str1 是非空字符串，则返回真

str1="Not empty"
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]];
then
  echo str1 is nonempty and str2 is empty string.
fi

var=0
#if [ $var -eq 0 ]; then echo "True"; fi
if test $var -eq 0; then
   echo "True"
fi

my_array=(A B "C" D)
#echo ${my_array[*]}
#echo ${my_array[@]}
echo "第一个元素为: ${my_array[0]}"
echo "第三个元素为: ${my_array[2]}"

val=`expr 2 + 2`
echo "两数之和为：$val"
算术运算符
a=10
b=20
val=`expr $a \* $b`
echo "a * b : $val"
val=`expr $a + $b`
echo "a + b : $val"
val=`expr $a - $b`
echo "a - b : $val"
val=`expr $b / $a`
echo "b / a : $val"
val=`expr $b % $a`
echo "b % a : $val"
if [ $a == $b ]
then
   echo "a 等于 b"
else
   echo "a 不等于 b"
fi



!
非运算，表达式为 true 则返回 false，否则返回 true。
[ ! false ] 返回 true。
-o
或运算，有一个表达式为 true 则返回 true。
[ $a -lt 20 -o $b -gt 100 ] 返回 true。
-a
与运算，两个表达式都为 true 才返回 true。
[ $a -lt 20 -a $b -gt 100 ] 返回 false。

#关系运算符,关系运算符只支持数字，不支持字符串，除非字符串的值是数字。
#eq检测两个数是否相等，相等返回 true。
[ $a -eq $b ] 返回 false。
#-ne检测两个数是否不相等，不相等返回 true。
[ $a -ne $b ] 返回 true。
#-gt检测左边的数是否大于右边的，如果是，则返回 true。
[ $a -gt $b ] 返回 false。
#-lt检测左边的数是否小于右边的，如果是，则返回 true。
[ $a -lt $b ] 返回 true。
#-ge检测左边的数是否大于等于右边的，如果是，则返回 true。
[ $a -ge $b ] 返回 false。
#-le检测左边的数是否小于等于右边的，如果是，则返回 true。
[ $a -le $b ] 返回 true。

a=10
b=20
if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi
if [ $a -ne $b ]
then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi
if [ $a -gt $b ]
then
   echo "$a -gt $b: a 大于 b"
else
   echo "$a -gt $b: a 不大于 b"
fi
if [ $a -lt $b ]
then
   echo "$a -lt $b: a 小于 b"
else
   echo "$a -lt $b: a 不小于 b"
fi
if [ $a -ge $b ]
then
   echo "$a -ge $b: a 大于或等于 b"
else
   echo "$a -ge $b: a 小于 b"
fi
if [ $a -le $b ]
then
   echo "$a -le $b: a 小于或等于 b"
else
   echo "$a -le $b: a 大于 b"
fi

#布尔运算符
#!非运算，表达式为 true 则返回 false，否则返回 true。
[ ! false ] 返回 true。
#-o或运算，有一个表达式为 true 则返回 true。
[ $a -lt 20 -o $b -gt 100 ] 返回 true。
#-a与运算，两个表达式都为 true 才返回 true。
[ $a -lt 20 -a $b -gt 100 ] 返回 false。

a=10
b=20

if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a != $b: a 等于 b"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
   echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi
if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi
if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a 小于 5 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 5 或 $b 大于 100 : 返回 false"
fi

#逻辑运算符
#&&逻辑的 AND 
[[ $a -lt 100 && $b -gt 100 ]] 返回 false
#||逻辑的 OR
[[ $a -lt 100 || $b -gt 100 ]] 返回 true

a=10
b=20

if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

=检测两个字符串是否相等，相等返回 true。
[ $a = $b ] 返回 false。
!=检测两个字符串是否相等，不相等返回 true。
[ $a != $b ] 返回 true。
-z检测字符串长度是否为0，为0返回 true。
[ -z $a ] 返回 false。
-n检测字符串长度是否为0，不为0返回 true。
[ -n "$a" ] 返回 true。
$检测字符串是否为空，不为空返回 true。
[ $a ] 返回 true。

a="abc"
b="efg"

if [ $a = $b ]
then
   echo "$a = $b : a 等于 b"
else
   echo "$a = $b: a 不等于 b"
fi
if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a != $b: a 等于 b"
fi
if [ -z $a ]
then
   echo "-z $a : 字符串长度为 0"
else
   echo "-z $a : 字符串长度不为 0"
fi
if [ -n "$a" ]
then
   echo "-n $a : 字符串长度不为 0"
else
   echo "-n $a : 字符串长度为 0"
fi
if [ $a ]
then
   echo "$a : 字符串不为空"
else
   echo "$a : 字符串为空"
fi


文件测试运算符
-b file
检测文件是否是块设备文件，如果是，则返回 true。
[ -b $file ] 返回 false。
-c file
检测文件是否是字符设备文件，如果是，则返回 true。
[ -c $file ] 返回 false。
-d file
检测文件是否是目录，如果是，则返回 true。
[ -d $file ] 返回 false。
-f file
检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。
[ -f $file ] 返回 true。
-g file
检测文件是否设置了 SGID 位，如果是，则返回 true。
[ -g $file ] 返回 false。
-k file
检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。
[ -k $file ] 返回 false。
-p file
检测文件是否是有名管道，如果是，则返回 true。
[ -p $file ] 返回 false。
-u file
检测文件是否设置了 SUID 位，如果是，则返回 true。
[ -u $file ] 返回 false。
-r file
检测文件是否可读，如果是，则返回 true。
[ -r $file ] 返回 true。
-w file
检测文件是否可写，如果是，则返回 true。
[ -w $file ] 返回 true。
-x file
检测文件是否可执行，如果是，则返回 true。
[ -x $file ] 返回 true。
-s file
检测文件是否为空（文件大小是否大于0），不为空返回 true。
[ -s $file ] 返回 true。
-e file
检测文件（包括目录）是否存在，如果是，则返回 true。
[ -e $file ] 返回 true。

file="test.sh"
if [ -r $file ]
then
   echo "文件可读"
else
   echo "文件不可读"
fi
if [ -w $file ]
then
   echo "文件可写"
else
   echo "文件不可写"
fi
if [ -x $file ]
then
   echo "文件可执行"
else
   echo "文件不可执行"
fi
if [ -f $file ]
then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi
if [ -d $file ]
then
   echo "文件是个目录"
else
   echo "文件不是个目录"
fi
if [ -s $file ]
then
   echo "文件不为空"
else
   echo "文件为空"
fi
if [ -e $file ]
then
   echo "文件存在"
else
   echo "文件不存在"
fi

#Shell echo命令
#转义字符
echo "\"It is a test\""

#接收输入
read name 
echo "$name It is a test"

echo -e "OK! \n" # -e 开启转义
echo "It is a test"

echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"

echo "It is a test" > myfile
echo "It is a test" > myfile.txt

#原样输出字符串，不进行转义或取变量(用单引号)
name=yingtingyao
echo '$name\"'
echo "$name\""=echo ''$name\"''

echo `date`
echo输出的字符串总结
===================================================================
       能否引用变量  |  能否引用转移符  |  能否引用文本格式符(如：换行符、制表符)
单引号  |           否           |             否             |                             否
双引号  |           能           |             能             |                             能
无引号  |           能           |             能             |                             否  
===================================================================                        

read firstStr secondStr
echo "第一个参数:$firstStr; 第二个参数:$secondStr"
$ sh hello.sh
2 3 4 5
第一个参数:2; 第二个参数:3 4 5

read -p "请输入一段文字:" -n 6 -t 10 -s password
echo -e "\npassword is $password"
 -p 输入提示文字 
 -n 输入字符长度限制(达到6位，自动结束) 
 -t 输入限时 
 -s 隐藏输入内容 
COMMENT























