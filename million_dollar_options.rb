#first_attempt_at_coding


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
#user_choice = gets.chomp
$Opening_Balance = 1000
balance = $Opening_Balance - user_choice.to_i


#def choices ()

if
user_choice == "House"
puts "Your balance is #{balance - options[0][1].to_i}"

elsif

user_choice == "Ferrari"
puts "Your balance is #{balance - options[1][1].to_i}"

elsif

user_choice == "Tech-Firm"
puts "Your balance is #{balance - options[2][1].to_i}"

elsif

user_choice == "Cruise"
puts "Your balance is #{balance - options[3][1].to_i}"

elsif

user_choice == "Mortgage"
puts "Your balance is #{balance - options[4][1].to_i}"

elsif

user_choice == "Vegas"
puts "Your balance is #{balance - options[5][1].to_i}"

elsif

user_choice == "No-Work"
puts "Your balance is #{balance - options[6][1].to_i}"

return user_choice

end

#while balance != 0 

puts "continue?"
end
end

#else
#puts "Keep Shopping"
#end


