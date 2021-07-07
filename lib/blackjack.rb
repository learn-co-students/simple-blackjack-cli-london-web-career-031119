def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 input = gets.chomp
 return input
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
card1 = deal_card 
card2 = deal_card 
 display_card_total(card1+card2)
 return card1+card2
end

def hit?(number)
  prompt_user
  input=get_user_input
  if input == 's'
    number
    elsif input == 'h'
  new_card=deal_card  
  number+new_card
  else invalid_command 
end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 score=initial_round
 until score > 21
 score = hit?(score)
 display_card_total(score)
 end
 end_game(score)
end
    
