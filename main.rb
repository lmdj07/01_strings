#first_attempt_at_coding
#balance = 1000 - option
# buy_house = 650
# red ferrari = 225
# tech firm = 150
# worldwide cruise = 75
# pay mortgage = 250
# las vegas = 100
# six months no work = 50
puts "what would you do with a million pounds?"
#puts "your balance is x spend some more"
options = [["New House",650],["Red Ferrari",225],["Buy Tech Firm",150],["Worldwide Cruise",75],["Pay off Mortgage",250],["Visit Las Vegas",100],["6m No Work",50]]
puts
#show user list of options
begin
puts "type 'opt' for options"
user_input = gets.strip
end until user_input == 'opt'
puts "Your choices & costs are:"
puts
puts options[0..6]

puts
puts "What will it be?"
