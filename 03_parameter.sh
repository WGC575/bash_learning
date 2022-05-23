#!bin/bash/
#The bash parameters are those items you input at the same time with the 
echo filename:" $0";
echo param_1:" $1";
echo param_2:" $2";
echo all_param:" $*"
echo number of parameters:" $#" 
echo current process ID:" $$" #current process ID
echo last process ID:" $!" #last process ID
echo all parameters:" $@" #all parameters
echo set:" $-" #set
echo erroneous or not:" $?" #erroneous or not
