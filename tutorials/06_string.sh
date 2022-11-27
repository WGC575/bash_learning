#!/bin/bash

# extract substrings

# ${string:starting_position}, for example, ${string:3} will give the substrings starting from the third character (counting starts from 0)

str="123456789"
echo ${str:3}
echo

# ${string:starting_position:length}, for example, ${string:3:5} will give the substrings starting from the third character and the substring lengths 5

echo ${str:3:5}
echo

# matching 

# deleting substring

# from start, shortest
# ${string#substring}

# from start, longest
# ${string##substring}

# from back, shortest
# ${string%substring}
# for example, delete the file extentions
str="filename.sh"
echo $str   # filename.sh
echo ${str%.sh} # filename

# from back, longest
# ${string%%substring}