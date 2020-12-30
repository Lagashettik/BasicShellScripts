#!/bin/bash 
for files in `ls *.txt`
do
filename=`echo  $files | awk -F. '{print $1}'`;
foldername=`echo $filename`;
mkdir $foldername;
mv $files $foldername;
echo $foldername"/"$filename;

done
