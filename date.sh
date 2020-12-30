#!/bin/bash -x
for files in `ls *.log.1`
do
basename=`echo $files | awk -F. '{print $1}'`;
extension=`echo $files | awk -F. '{print $2}'`;
currentdate=`date +'%d%m%Y'`;
newfilename=`echo $basename-$currentdate.$extension`;
mv $files $newfilename;
done
