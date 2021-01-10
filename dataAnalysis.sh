#bin/bash -x
cat data.csv | awk '{if($4>10000)print $2 " " $7}'
cat data.csv | awk '{if($3=="CAPTIAN") print $3}'
cat data.csv | awk '{if($3 == "CAPTIAN")sum+=$7}END{print "Aggregate Total Pay :" sum}'
cat data.csv | awk '{if($5>7000 && $5<10000) print " " $5}'
cat data.csv | awk '{sum+=$4} END {print "Aggregate Basepay: " sum/(NR-1)}'
