#!/bin/bash


path="/home/venki/logs/"
err_types=('ERROR' 'FATAL' 'CRITICAL')
logfile="/home/venki/logs/log_report.txt"
echo "===========================log-analysis=======================" > "$logfile"

echo "================================================================================" >> "$logfile"
echo "===============THE LOGS FILES ANALYSIS UPDATED IN LAST 24 HOURS ========================="
files=$(find $path -name "*.log" -mtime -1) >>"$logfile"
echo "$files" >> "$logfile"
echo "=================================================================================" >> "$logfile"

for file in $files
    do
        echo "============================ FETCHING IN $file =================================" >> "$logfile"
        for i in ${err_types[@]}
            do
                 
                echo "============================== $i ISSUES =======================================" >> "$logfile"
                grep "$i" "$file">> "$logfile"

                echo "==========================THE NUMBER OF $i ISSUES==================================" >> "$logfile"
                count=$(grep -c "$i" "$file")
                echo "$count" >> "$logfile"
                echo -e "\n==============================================================================\n" >> "$logfile"
                if [ $count -ge 10 ];then
                echo " ⚠️  TAKE ACTION IMMEDIATELY TOO MANY '$i' ISSUES IN $file "
                fi
            done
            
    done
echo " =======ANALYSED SUCCESFULLY AND REPORTS STORED IN $logfile ==============="