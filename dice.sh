#!/bin/bash
declare -A dice_roll
dice_roll[one_count]=0
dice_roll[two_count]=0
dice_roll[three_count]=0
dice_roll[four_count]=0
dice_roll[five_count]=0
dice_roll[six_count]=0
max_count=10
while [ ${dice_roll[one_count]} -lt $max_count ]
do
        randomNumber=$((1+$RANDOM%6))
        if [ $randomNumber -eq 1 ]
        then
                dice_roll[one_count]=$((${dice_roll[one_count]}+1))
        elif [ $randomNumber -eq 2 ]
        then
                dice_roll[two_count]=$((${dice_roll[two_count]}+1))
        elif [ $randomNumber -eq 3 ]
        then
                dice_roll[three_count]=$((${dice_roll[three_count]}+1))
        elif [ $randomNumber -eq 4 ]
        then
                dice_roll[four_count]=$((${dice_roll[four_count]}+1))
        elif [ $randomNumber -eq 5 ]
        then
                dice_roll[five_count]=$((${dice_roll[five_count]}+1))
        elif [ $randomNumber -eq 6 ]
        then
                dice_roll[six_count]=$((${dice_roll[six_count]}+1))
        fi
done
echo ${dice_roll[@]}
max=-999
min=999
counter=0
for i in "${dice_roll[@]}"
do
        counterk=1
        counterj=1
        if [ $i -gt $max ]
        then
                max=$i
                for j in "${!dice_roll[@]}"
                do
                        if [ $counterj -eq $counter ]
                        then
                                max_number=$j
                        fi
                        counterj=$(($counterj+1))
                done
        fi
        if [ $i -lt $min ]
        then
                min=$i
                for k in "${!dice_roll[@]}"
                do
                        if [ $counterk -eq $counter ]
                        then
                                min_number=$k
                        fi
                        counterk=$(($counterk+1))
                done
        fi

        counter=$(($counter+1))
done
echo "max number count:" $max_number $max
echo "min:" $min $min_number

