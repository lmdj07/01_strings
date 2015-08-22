def display_balance(balance)
  puts "Your balance is #{balance}"
end



puts "what would you do with a million pounds?"

options = [["New House",650],["Red Ferrari",225], ["Buy Tech-Firm",150], ["Worldwide Cruise",75], 
["Pay Off Mortgage",250], ["Visit Las Vegas",100], ["Six Months No-Work",50]]
puts

#show user list of options

begin
puts "type 'opt' for options"
user_input = gets.strip
end until user_input == 'opt'
puts
puts "Your choices are:"
puts
options.each { |key, value| puts "#{key}"}
puts
puts "What will you spend on?
.. You have a choice of an item\(s\) 
       up to a million pounds "
puts 
puts "type the last word of your choice 
e.g \"Ferrari\" or \"House\" etc... \(case sensitive\)"
puts
user_choice = gets.chomp
balance = 1000



if
  user_choice == "House" 
  balance = balance - options[0][1]
  display_balance (balance)
  

elsif

  user_choice == "Ferrari"
  balance = balance - options[1][1]
  display_balance (balance)
  altn_choices (altn)

elsif

  user_choice == "Tech-Firm"
  balance = balance - options[2][1]
  display_balance (balance)

elsif

  user_choice == "Cruise"
  balance = balance - options[3][1]
   display_balance (balance)

elsif

  user_choice == "Mortgage"
  balance = balance - options[4][1]
  display_balance (balance)

elsif

  user_choice == "Vegas"
  balance = balance - options[5][1]
  display_balance (balance)

elsif

  user_choice == "No-Work"
  balance = balance - options[6][1]
  display_balance (balance)

end




