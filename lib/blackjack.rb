def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "s"
    card_total
  elsif answer == "h"
      card_total + deal_card
    else
      invalid_command
    end
  end

def invalid_command
  # code invalid_command here
  "Invalid Command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner(card_total)
  # code runner here
  welcome
  initial_round
  hit?(card_total)
  display_card_total(card_total)
    if card_total > 21
      end_game(card_total)
    end
end
