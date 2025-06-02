#!/bin/sh
echo "::debug::Running Entrypoint.sh"  #writing a debug message
echo "Hello $1" #writing hello + 1st argument
echo "INPUT_WHO_TO_GREET : $INPUT_WHO_TO_GREET" #WHO_TO_GREET will be an env variablw with same name as who_to_greet in capital 
echo "HELLO $HELLO" #will print hello world as i set env variable in action.yml
time = $(date)
echo "time=$time" >> $GITHUB_OUTPUT # set time it as output
echo "$HELLO_TIME=$time" >> $GITHUB_ENV  # setting an environemnt variable