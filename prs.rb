CHOICES = {'p' => "Paper", 'r' => "Rock", 's' => "Scissors"}
puts "Welcome to Paper Rock Scissors"

def display_winning_choice(winning_choice)
  case winning_choice
  when 'p'
    "Paper engulfs Rock!"
  when 'r' 
    "Rock smashes Scissors!"
  when 's'
    "Scissors eviscerates Paper!"
  end
end

loop do
  begin
    puts "Choose one: (P/R/S)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample
  
  puts "Computer picked #{CHOICES[computer_choice]} and you picked #{CHOICES[player_choice]}."
  if player_choice == computer_choice
    puts "It's a tie!"  
  elsif (player_choice == 'p' && computer_choice == 'r') || 
        (player_choice == 'r' && computer_choice == 's') ||
        (player_choice == 's' && computer_choice == 'p')
    puts display_winning_choice(player_choice)
    puts "You won!"
  else
    puts display_winning_choice(computer_choice)
    puts "You lost :("
  end

  puts "\nWould you like to play again? (Y/N)"
  player_input = gets.chomp.downcase
  break if player_input != 'y'
end