def display_balance(balance)
  puts "Your balance is #{balance}"
end

def display_menu(menu)
  puts "***MENU***"
  menu.each { |key, value| puts "#{key}"}
  
end

puts "what would you do with a million pounds?"

options = {"New House"=> 650,"Red Ferrari" => 225, "Buy Tech-Firm" =>150, "Worldwide Cruise" => 75, 
"Pay Off Mortgage" => 250, "Visit Las Vegas" => 100, "Six Months No-Work" => 50}

puts

#show user list of options

begin
puts "type 'opt' for options"
user_input = gets.strip
end until user_input == 'opt'
puts
puts "Your choices are:"
puts
display_menu(options)
puts
puts "What will you spend on?
.. You have a choice of an item\(s\) 
       up to a million pounds "

balance = 1000

begin 

	puts 
	puts "type the last word of your choice 
	e.g \"Ferrari\" or \"House\" etc... \(case sensitive\)"
	puts
	user_choice = gets.chomp
  	 
	if  options.has_key?(user_choice)
		balance = balance - options[user_choice]
		display_balance (balance)
		
	else 
		puts "invalid choice"
		display_menu(options)
	end


end while balance >0



