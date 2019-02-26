def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1 .. 11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  choice = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card() + deal_card()
  display_card_total(sum)
  sum
end

def hit?(card)
  prompt_user
  choice = get_user_input()
  case choice
    when "s"
      card
    when "h"
      card += deal_card()
    else
      invalid_command()
      prompt_user()
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  cards = initial_round()
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
end_game(cards)

end
