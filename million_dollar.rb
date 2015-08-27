def display_balance(balance)
  puts "Your balance is #{balance}"
end

def display_menu(menu)
  puts "*******************"
  menu.each { |key, value| puts "#{key}"}
  puts "*******************"
end

puts "what would you do with a million pounds?"

options = {"New House"=> 650,"Red Ferrari" => 225, "Buy Tech Firm" =>150, "Worldwide Cruise" => 75, 
"Pay Off Mortgage" => 250, "Visit Las Vegas" => 100, "Six Months No Work" => 50}

puts



begin
  puts "type 'opt' for options"
  user_input = gets.strip
end until user_input == 'opt'
puts
puts "Your choices are:"
puts
display_menu(options)
puts
puts "Pick from the list above"


balance = 1000

begin 

	puts
	user_choice = gets.chomp
  	 
	if  options.has_key?(user_choice)
		balance = balance - options[user_choice]
		display_balance (balance)
		
		
	else 
		puts "<invalid choice>"
		puts
		display_menu(options)
		puts "only above list (case sensitive)"
	end
	
	if 	options.has_key?(user_choice) && balance >=0
		puts "Go on, spend some more"
	end

	if 	balance <0
		puts "You've spent too much; you need to sell something"
	end


end while balance >0



#IDEAS TO ENHANCE GAME
#IF USER DOES NOT WANT TO USE ALL THEY CAN GIVE TO CHARITY OF THEIR CHOICE
###need to display a list of charities
#IF USER GOES OVER A MILLION, THEY NEED TO SELL BACK TO THE GAME AT A 5% LOSS
#if user chooses to start all over again, they get 10% less money (maybe 10% of their ending balance deducted from  the million)
#if the user choses to abort the game altogether, they must leave a comment; comments need to be saved to a log file
#if user wants something not in the list, they can say what that is and fetch the price from ???? web?

