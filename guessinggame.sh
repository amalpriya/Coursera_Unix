read=0
numFiles=$(find . -maxdepth 1 -type f | wc -l)
while [[ $read -eq 0 ]]
do 
   echo "Please guess the number of files in the current directory"
   read guess
   if [[ $guess =~ ^[0-9]+$ ]]
   then
       if [[ $guess -eq $numFiles ]]
       then 
           let read=1
	       echo "Congratulations!!! You guessed it right"
       elif [[ $guess -gt $numFiles ]]
       then
           echo "Sorry your guess is wrong. The guess is too high."
       else
           echo "Sorry your guess is wrong. The guess is too low."
       fi
   else
       echo "Enter a valid integer as a guess!!!"
   fi
done
   