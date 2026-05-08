#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER_TO_GUESS=$(( RANDOM % 1000 + 1 ))
echo $NUMBER_TO_GUESS
echo "Enter your username:"
read USERNAME
USERNAME_RESULT=$($PSQL "SELECT user_id,username,games_played FROM users WHERE username='$USERNAME'")
if [[ -z $USERNAME_RESULT ]]
then
  REGISTER_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  if [[ $REGISTER_USER = "INSERT 0 1" ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  fi
else
  echo $USERNAME_RESULT | while IFS="|" read USER_ID USER GAMES_PLAYED
  do
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id='$USER_ID'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi
echo "Guess the secret number between 1 and 1000:"
GUESSES=0
read USER_GUESS
while [[ $USER_GUESS != $NUMBER_TO_GUESS ]]
do
  (( GUESSES++ ))
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read USER_GUESS
  elif [[ $USER_GUESS -gt $NUMBER_TO_GUESS ]]
  then
    echo "It's lower than that, guess again:"
    read USER_GUESS
  elif [[ $USER_GUESS -lt $NUMBER_TO_GUESS ]]
  then
    echo "It's higher than that, guess again:"
    read USER_GUESS
  fi
done
(( GUESSES++ ))

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE user_id = '$USER_ID'")
GAME_RESULT=$($PSQL "INSERT INTO games(user_id,secret_number,guesses) VALUES('$USER_ID','$NUMBER_TO_GUESS','$GUESSES')")
echo "You guessed it in $GUESSES tries. The secret number was $NUMBER_TO_GUESS. Nice job!"