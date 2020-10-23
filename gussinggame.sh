function guessinggame(){
    number_of_files=$(ls -l |grep "^-"|wc -l)
    guess=$number_of_files+1
    while [[ $guess -ne $number_of_files ]]
        do
            echo "Enter your guess:"
            read guess
            if [ $guess -lt $number_of_files ]
            then
                echo "Your guess is too low."
            elif [ $guess -gt $number_of_files ]
            then
                echo "Your guess is too high."
            else
                echo "Congratz~ Your guess is correct!"
            fi
        done
}

 echo "How many files are in your current directory? Lets take a guess!"
 guessinggame
