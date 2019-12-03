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

    #output
    count=0
    for i in ${app[*]}
    do
        `./Downloader.sh -a ${app[count]} -t ${hash[count]}`
        `./Compile.sh -a ${app[count]} -v ${hash[count]}>./result/${hash[count]}`
        #echo "${app[count]}-${hash[count]}"
        count=`expr ${count} + 1`
    done
    

}

compile_all app hash


#echo ${app}
#result="result"
#echo `cat app > $result`
