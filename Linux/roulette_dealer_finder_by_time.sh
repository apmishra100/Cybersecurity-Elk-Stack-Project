#!/bin/bash


###
#Usage: sh roulette_dealer_finder_by_time.sh "0310" "02:00:00 AM"
#argument 1 - date code in 3 digits e.g. 0310, 0312, 0315
#argument 2 - time, match format of data file e.g. "02:00:00 AM"
#output - Name of dealer at time and date specified - e.g. Abigale Rich
#If we wanted to also include the time, we would just need to change awk command to awk '{print $1, $2, $5, $6}', as the $1, $2 is representative of the time portion in the data file since awk is tokenizing based on whitespace.
###

grep -i "$2" $1_Dealer_schedule | awk '{print $5, $6}'
