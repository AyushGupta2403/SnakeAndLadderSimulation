#!/bin/bash -x
#declaring function for snakeLadderGame
function snakeLadderGame()
{
position=0
count=0
while(( $position < 100 ))
do
die=$((1+RANDOM%6))
option=$((RANDOM%3))
noPlay=0
ladder=1
snake=2
	case $option in
#noPlay option:The player does not move any position
			$noPlay)
				position=$position

				echo " Current Position after no Play for Player : $msg ->" $position
						;;
#ladder option:The player moves die number of position ahead in the game
			$ladder)

				position=$(($position+$die))

				echo " Current Position after climbing ladder for Player : $msg ->" $position
						;;
#snake option:The player moves die number of positions behind in the game
			$snake)

				position=$(($position-$die))

				if(($position < 0))
             then
                position=0
             fi

				echo " Current Position after snake bite for Player : $msg ->" $position
						;;
	esac
done
}

 snakeLadderGame
