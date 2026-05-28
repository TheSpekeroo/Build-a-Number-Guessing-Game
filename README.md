# 🔢 Number Guessing Game

A Bash-based number guessing game backed by a **PostgreSQL** database that tracks players and their game history.

## How It Works

The script picks a random number between 1 and 1000 and prompts the player for their username. New users are registered automatically; returning users are greeted with their total games played and their personal best (fewest guesses). The player then guesses until they find the number, receiving higher/lower hints along the way. Each completed game is saved to the database.

## Database Schema

Two tables:

- **`users`** — `user_id`, `username` (max 22 chars), `games_played`
- **`games`** — `game_id`, `user_id` (FK), `secret_number`, `guesses`

## Setup

1. Restore the database from the dump:
   ```bash
   psql --username=freecodecamp < number_guess.sql
   ```

2. Make the script executable and run it:
   ```bash
   chmod +x number_guess.sh
   ./number_guess.sh
   ```

## Requirements

- Bash
- PostgreSQL (running locally, user `freecodecamp`)
