#!bin/bash/

# $N where N is a integer from starting from one are the parameters that will be read into the bash program
# for example, in the following code, the program will output the two parameters input by calling the bash file with "bash filename.sh para_1 para_2"
para_1=$1
para_2=$2

# output the parameters
echo "The given parameters are as follows:"
echo "parameter 1:" $para_1
echo "parameter 2:" $para_2
