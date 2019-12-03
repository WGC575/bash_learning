#!bin/bash/
#Variable naming style is similar to those in other languages. However, in definition, spaces are not allowed. 
#Better use {} for every variable while using it to make it clear.
var="Definitions of variable should not have spaces."
#echo ${var}
#echo $('ls')

#use $('bash command') to represent a varaible which is the result of the command.
for file in $('ls')
do
    echo #"${file} is in current directory."
done

#While reading a variable, use $ before the variable, but when writing it, use it without $. 
#Use unset to delete a variable. Once deleted, it can't be used again. 
my_url="http://www.wgc575.com"
#echo ${my_url}
unset my_url
#echo ${my_url}

i=1
for file in $('ls')
do i=${i}+1
done
#echo "${i} files are in current directory."

#Use readonly to define variables that could not be changed.
readonly ro_var=111
#echo ${ro_var}
#String: '' doesn't parse special characters while "" does.
your_name='WGC575'
str="Hello, I know you are \"$your_name\"!\n"
#echo -e ${str}
str='Hello, I know you are \"$your_name\"!\n'
#echo ${str}

#Get the length of the string.
#Output the certain substring of the variable.
string="WGC575"
#echo ${#string}
#echo ${string:1:4} #This output the 1th to the 4th (started from 0th)

#Find. Note, use ``(the same keyboard location with ~) in searching instead of ''
string="WGC575"
#echo `expr index "$string" G5` #expr means expression

#Array
number_1="number_1"
number_2="number_2"
number_3="number_3"

array=($number_1 $number_2 $number_3)
#echo $array[1] #This will output "number_1[1]" because "[1]" is not counted in to the name of this variable.
#echo ${array[2]} #This will output the second member of the array.
#echo ${array[@]} #This output all members.