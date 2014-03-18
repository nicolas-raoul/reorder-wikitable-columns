#!/bin/bash

IN=$1
OUT=$IN.out
IFS=''

rm $OUT

read < $IN # Skip the table's first line.

while read HEADER
do
  # Name each of your input columns here.
  read ICON
  read NAME
  read UN
  read AUS
  read CAN
  read EU
  read FRA
  read UK
  read US
  read IND
  read RUS
  read PRC
  read TUR
  read TUN
  read IRN
  read EGY
  read KZ
  read KSA
  echo "Processing line $HEADER"
  # Reorder each of the input columns to the order you want below.
  # Feel free to skip any column you want to delete.
  echo $HEADER >> $OUT
  echo $ICON >> $OUT
  echo $NAME >> $OUT
  echo $AUS >> $OUT
  echo $CAN >> $OUT
  echo $EGY >> $OUT
  echo $EU >> $OUT
  echo $IND >> $OUT
  echo $IRN >> $OUT
  echo $KZ >> $OUT
  echo $KSA >> $OUT
  echo $PRC >> $OUT
  echo $RUS >> $OUT
  echo $TUN >> $OUT
  echo $TUR >> $OUT
  echo $UK >> $OUT
  echo $UN >> $OUT
  echo $US >> $OUT
done < $IN
