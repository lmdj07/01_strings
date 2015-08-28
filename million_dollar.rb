def display_balance(balance)
  puts "Your balance is #{@balance}"
end

def display_menu(menu)
  puts "*******************"
  menu.each { |key, value| puts "#{key}"}
  puts "*******************"
  puts "or Give to Charity"
  puts "*******************"
end

def show_charities (charity)
	charity.each { |key, value| puts "#{value}"}
end

def decision_charities(give_to)
	user_choice = gets.chomp
	if @charity_list.has_value?(user_choice)
		puts"enter amount to give"
		puts
		puts "you have #{@balance} left"
		puts
		amount_to_give = gets.chomp.to_i
		@balance = @balance - amount_to_give
		puts "you have #{@balance} left"
	else puts "not in list"
	end
end
puts "what would you do with a million pounds?"

options = {"New House"=> 650,"Red Ferrari" => 225, "Buy Tech Firm" =>150, "Worldwide Cruise" => 75, 
"Pay Off Mortgage" => 250, "Visit Las Vegas" => 100, "Six Months No Work" => 50}

@charity_list = {1=>"Save the Children", 2=>"Cancer Research UK", 3=>"Aged UK", 4=>"NSPCC", 5=>"Centre Point", 6=>"Shelter", 7=>"Salvation Army", 8=>"The Disabilities Trust"}
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


@balance = 1000

begin 

	puts
	user_choice = gets.chomp


	if  options.has_key?(user_choice)
		@balance = @balance - options[user_choice]
		display_balance (@balance)

	elsif 
		user_choice == "Give to Charity"
		puts
		puts "Our preferred Charities List"
		puts
		puts "**********************"
		show_charities(@charity_list)
		puts "**********************"
		puts
		puts "Select from above list or let us choose for you"
		decision_charities(user_choice)

	else 
		puts "<invalid choice>"
		puts
		display_menu(options)
		puts "only above list (case sensitive)"
	end
	
	if 	options.has_key?(user_choice) && @balance >=0
		puts "Go on, spend some more or Give to Charity"
	end

	if 	@balance <0
		puts "You've spent too much; you need to sell something"
	end

	if  user_choice == "End Game"
		puts "Please leave a comment"
		#comment = []
		comment <<gets.chomp
		comm_file = File.open("exit_comments.txt","w","a")
		comm_file<<gets.chomp
		comm_file.close
	end


end while @balance >0



# IDEAS TO ENHANCE GAME
######################################################################################################
# If user does not want to spend all they can give to charity from list of preferred chrities - DONE
# need to display a list of charities - DONE
# If user goes over a million they need to sell back at a 5% LOSS
# if user chooses to start all over again, they get 10% less money (maybe 10% of their ending balance 
# deducted from  the million)
# if the user choses to abort the game altogether, they must leave a comment; comments need to be saved to a log file
# save comments in an array???
# if user wants something not in the list, they can say what that is and fetch the price from ???? web?