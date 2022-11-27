#!bin/bash/

names=$(ls ../tutorials/)
echo $names
for dir in $names
do
    echo $dir
    mkdir $dir
done