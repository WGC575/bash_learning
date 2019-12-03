#!bin/bash
###########################################################
#Function Name: compile_all 
#   This function compile all commits and output the 
#   compiling log to ./result folder with hash as output's
#   names.
###########################################################
#Parameters: app,hash
#   "app" contains the app name list of the commits.
#   "hash" contains the hash list of the commits.
#   The number of commits in two files should be the same.
###########################################################
function compile_all(){

    #read app names
    count=0
    app=()
    hash=()
    for i in `cat $1`
    do
        app[count]=${i}
        count=`expr ${count} + 1`
    done 

    #read hash
    count=0
    for i in `cat $2`
    do
        hash[count]=${i}
        count=`expr ${count} + 1`
    done 

    #output to ./result
    count=0
    for i in ${app[*]}
    do
        `./Downloader.sh -a ${app[count]} -t ${hash[count]}`
        `./Compile.sh -a ${app[count]} -v ${hash[count]}>./result/${hash[count]}`
        count=`expr ${count} + 1`
    done
}
#call to this function
compile_all app hash