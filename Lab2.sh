#!/bin/bash
echo "Enter Name of Source Directory ":$dir
read dir
echo "Enter Name of Destination Directory ":$backupdir
read backupdir
if [[ ! -d $backupdir ]] 
then 
	mkdir $backupdir
	
fi
date=$(date +"%Y-%m-%d-%H-%M-%S")
cp -r $dir ./$backupdir/$date
Res=$(ls $backupdir | wc -l)
Res=`expr $Res + 1`
ls -lR $dir > directoryinfo.last
echo "Enter the name of Time interval ":$interval
read interval
echo "Enter name of maximum backups ":$backup
read backup
while true 
do 
   sleep $interval
   ls -lR $dir > directoryinfo.new
   cmp -s directoryinfo.last directoryinfo.new  
if [[ $? -eq 1 ]] 
then
    if [[ $Res -gt $backup ]]
    then
    	rm -r ./$backupdir/$(ls ./$backupdir/ -t | tail -1)
    	echo "Oldest one deleted and data backedup with new one "
    	
    fi			 
    date=$(date +"%Y-%m-%d-%H-%M-%S")
    cp -r $dir ./$backupdir/$date
    ls -lR $dir > directoryinfo.last
    echo "Changes are copied on backup directory"  
    Res=`expr $Res + 1`
else 
    echo " No change on data " 
fi 
done

