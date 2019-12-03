#!bin/bash
hash=()
function compile_all(){

    #app names
    count=0
    app=()
    hash=()
    for i in `cat $1`
    do
        app[count]=${i}
        count=`expr ${count} + 1`
    done 

    #hash
    count=0
    for i in `cat $2`
    do
        hash[count]=${i}
        count=`expr ${count} + 1`
    done 
    `./Downloader.sh -a ${app[1]} -t ${hash[1]}`
    `./Compile.sh -a ${app[1]} -v ${hash[1]}`

}

compile_all app hash


#echo ${app}
#result="result"
#echo `cat app > $result`
