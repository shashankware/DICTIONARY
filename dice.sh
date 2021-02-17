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




declare -A record
JanCount=0
FebCount=0
MarchCount=0
AprilCount=0
MayCount=0
JuneCount=0
JulyCount=0
AugCount=0
SeptCount=0
OctCount=0
NovCount=0
DecCount=0
for ((i=1;i<=50;i++))
do
        randomNumber=$((1+$RANDOM%12))
        if [ $randomNumber -eq 1 ]
        then
                JanCount=$(($JanCount+1))
                record["Jan"]=$JanCount
        elif [ $randomNumber -eq 2 ]
        then
                FebCount=$(($FebCount+1))
                record["Feb"]=$FebCount
        elif [ $randomNumber -eq 3 ]
   then
                MarchCount=$(($MarchCount+1))
      record["March"]=$MarchCount
        elif [ $randomNumber -eq 4 ]
   then
                AprilCount=$(($AprilCount+1))
      record["April"]=$AprilCount
        elif [ $randomNumber -eq 5 ]
   then
                MayCount=$(($MayCount+1))
      record["May"]=$MayCount
        elif [ $randomNumber -eq 6 ]
   then
                JuneCount=$(($JuneCount+1))
      record["June"]=$JuneCount
        elif [ $randomNumber -eq 7 ]
   then
                JulyCount=$(($JulyCount+1))
      record["July"]=$JulyCount
        elif [ $randomNumber -eq 8 ]
   then
                AugCount=$(($AugCount+1))
      record["Aug"]=$AugCount
        elif [ $randomNumber -eq 9 ]
   then
                SeptCount=$(($SeptCount+1))
      record["Sept"]=$SeptCount
        elif [ $randomNumber -eq 10 ]
   then
                OctCount=$(($OctCount+1))
      record["Oct"]=$OctCount
        elif [ $randomNumber -eq 11 ]
   then
                NovCount=$(($NovCount+1))
      record["Nov"]=$NovCount
        elif [ $randomNumber -eq 12 ]
   then
                DecCount=$(($DecCount+1))
      record["Dec"]=$DecCount
        fi
done
echo ${!record[@]}
echo ${record[@]}
#!/bin/bash

