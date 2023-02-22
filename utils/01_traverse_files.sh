#!bin/bash/

names=$(ls ../tutorials/)
echo $names

# this loop will create folders based on the file names in the above directory
for dir in $names
do
    echo $dir
    mkdir $dir
done