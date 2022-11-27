#!bin/bash
a=20
b=10
#items in expressions should be separated by spaces.
#Arithmetic
#add
c=`expr ${a} + ${b}`
echo ${c}
#subtract
c=`expr ${a} - ${b}`
echo ${c}
#multiply. NOTE: * is a key word in bash. So use it with \ in expressions.
c=`expr ${a} \* ${b}` 
echo ${c}
#divide
c=`expr ${a} / ${b}`
echo ${c}
#conditionals need []
if [ $a == $b ]
then 
    echo "a == b"
else
    echo "a != b"
fi

#Relational
if [ $a -eq $b ]
then 
    echo "a == b"
fi
if [ $a -ne $b ]
    then
    echo "a != b"
fi
if [ $a -gt $b ]
    then
    echo "a > b"
fi 
if [ $a -lt $b ]
    then 
    echo "a < b"
fi
#greater or equal
if [ $a -ge $b ]
    then
    echo "a >= b"
fi
if [ $a -le $b ]
    then
    echo "a <= b"
fi

#BOOL
if [ ! $a -eq $b ]
    then echo "a != b"
fi
if [ $a == 20 -a $b == 10 ]
    then echo "a == 20 and b == 10"
fi
if [ $a == 10 -o $b == 10 ]
    then echo "a == 10 or b == 10"
fi
if [[ $a == 20 && $b == 10 ]]
    then echo "a == 20 and b == 10"
fi
if [[ $a == 10 || $b == 10 ]]
    then echo "a == 10 or b == 10"
fi

#String
# =, equal
# !=, unequal
# -z, size = 0
# -n, size != 0
# $, null

#FILE
# -s, null
# -e, exist
# -d, is directory