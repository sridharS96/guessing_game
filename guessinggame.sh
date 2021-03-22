 #!/usr/bin/env bash

echo "    ITS THE GUESSING GAME    "
echo " GUESS THE NUMBER OF FILES "
read num
echo " YOU HAVE GUESSED : $num"
	value=`ls -l | grep -v ^d | wc -l`
	flag='Y'
function game {
 	while [[ $flag = 'Y' ]] 
 	do
	if [[ $value -eq $num ]]
    	then
    	echo "correct guess"
     	let 'flag=N'
    	elif [[ $value -lt  $num ]]
	then
     	echo "try again with smaller num"
     	echo " GUESS THE NUMBER OF FILES "
	read num
	echo " YOU HAVE GUESSED : $num"
     	elif [[ $value -gt $num ]]
        then
	echo "try again with bigger num"
	read num
	echo " YOU HAVE GUESSED : $num"
	fi
done
} 
game
