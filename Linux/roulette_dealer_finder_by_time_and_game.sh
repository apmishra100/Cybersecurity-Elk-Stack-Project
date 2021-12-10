#!/bin/bash

###
#Usage: sh roulette_dealer_finder_by_time_and_game.sh "0310" "02:00:00 AM" "1"
#argument 1 - date code in 3 digits e.g. 0310, 0312, 0315
#argument 2 - time, match format of data file e.g. "02:00:00 AM"
#argument 3 - game code. "1" - Blackjack, "2" - Roulette, "3" - Texas Hold em
#output - Name of dealer at time and date specified - e.g. Summer-Louise Hammond
#If we wanted to also include the time, we would just need to change awk command to awk '{print $1, $2, $firstName, $lastName}' firstName="$fNameIndex" lastName="$lNameIndex", as the $1, $2 is representative of the time portion in the data file since awk is tokenizing based on whitespace.
###

fNameIndex=$(( $3 * 2 + 1 ))
lNameIndex=$(( $3 * 2 + 2 ))
 
grep -i "$2" $1_Dealer_schedule | awk '{print $firstName, $lastName}' firstName="$fNameIndex" lastName="$lNameIndex"
