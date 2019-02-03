def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_t)
  # code #display_card_total here
  puts "Your cards add up to #{card_t}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_choice = gets.chomp
end

def end_game(bye)
  # code #end_game here
  puts "Sorry, you hit #{bye}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card() + deal_card()
  display_card_total(sum)
  sum
end



def hit?(tot_card)
  # code hit? here
  prompt_user()
  choice = get_user_input()
  case choice
  when "s"
    tot_card
  when "h"
    tot_card += deal_card()
  else
    invalid_command()
    prompt_user()
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  card_sum = initial_round()
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
end_game(card_sum)
end
