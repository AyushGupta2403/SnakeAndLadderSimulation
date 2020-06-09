#!/bin/bash -x
#declaring position at start to 0

  function ladderfunction()
  {
 	position=$(($position+$die))
   if (($position > 100 ))
   then
   position=$currentPosition
   fi
	echo " Current Position after climbing ladder for Player : $msg  ->" $position
	echo ""
  }


  function snakefunction()
  {

   position=$(($position-$die))
   if(($position < 0))
   then
    position=0
   fi
   if(($position < 100 ))
   then
    currentPosition=$position
   fi
 		echo " Current Position after snake bite for Player : $msg ->" $position
		echo ""
   }



   function noPlayfunction()
   {
    position=$position
    echo " Current Position after no Play for Player : $msg ->" $position
	 echo "" 
	}

function snakeLadderGame()
{
msg=$1
echo "This is Player $msg"
position=0
count=0
position=$currentPosition

while [[ $position -ne 100 ]]
do
die=$((1+RANDOM%6))
option=$((RANDOM%3))
noPlay=0
ladder=1
snake=2
	case $option in

			$noPlay)
						 noPlayfunction
						;;
			$ladder)

						 ladderfunction
						;;
			$snake)
						 snakefunction
						;;
	esac
count=$(($count+1))
done

}

snakeLadderGame 
compare1=$count
echo "Count:" $compare1
