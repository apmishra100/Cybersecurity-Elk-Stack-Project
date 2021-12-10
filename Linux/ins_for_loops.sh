# list variables
months=(
    'january'
    'february'
    'march'
    'april'
    'may'
    'june'
    'july'
    'august'
    'september'
    'october'
    'november'
    'december'
)
days=('mon' 'tues' 'wed' 'thur' 'fri' 'sat' 'sun')

#print out months
for month in ${months[@]}
do
    echo $month
done

#iterate over a list of days
for day in ${days[@]}
do
    if [ $day = 'sun' ] || [ $day = 'sat' ]
    then
        echo "It is the weekend! Take it easy!"
    else
        echo "It is a weekday! Get to work!"
    fi
done


for file in $(ls);
do
    ls -lah $file
done


# run an operation on each number
for num in {0..5};
do
    if [ $num = 1 ] || [ $num = 4 ]
    then
      echo $num
    fi
done

