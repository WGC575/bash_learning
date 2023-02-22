#!bin/bash/

# lua script environment path and the input script path
# in this way, one can run lua script without setting environment variables
# $1 is the first user input parameter, e.g. "-a"
ls $1


# also, it's possible to run a script with a variable definition
# however, in this way, the command will run at calling, without the ability to take parameters
cmd=$(ls ./)

