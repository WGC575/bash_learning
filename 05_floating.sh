#!/bin/bash
score=0
for i in {1..4}
do
    output_python=$(python3 grading_script.py 2>&1)
    score_single=$(echo $output_python | tr " " "\n")
    for index in $score_single
    do
        text="> [$index]"
    done
    score=`echo ${index} + ${score} | bc`
done
echo $score