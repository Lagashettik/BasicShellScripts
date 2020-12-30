#!/bin/bash

echo  "Enter Foldername"
read foldername
for folder in */;
do
if [ $folder == $foldername/ ];
then
    ((a++));
fi
done
if [ "$a" == "1" ];
then
    echo "Folder already exits"
else
    mkdir $foldername;
    echo "Folder created";
fi
