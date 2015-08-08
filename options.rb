#first_attempt_at_coding

$Opening_Balance = 1000
$New_House = 650
$Red_Ferrari = 225
$Buy_Tech_Firm = 150
$Worldwide_Cruise = 75
$Pay_Off_Mortgage = 250
$Visit_Las_Vegas = 100
$Six_Months_off_Work = 50

puts "what would you do with a million pounds?"
#puts "your balance is x spend some more"
options = {"New House" => 650,"Red Ferrari" => 225, "Buy Tech Firm" => 150, "Worldwide Cruise" => 75, "Pay off Mortgage" => 250, "Visit Las Vegas" => 100, "Six Months off Work" => 50}
puts
#show user list of options
begin
puts "type 'opt' for options"
user_input = gets.strip
end until user_input == 'opt'
puts
puts "Your choices & associated costs are:"
puts
options.each { |key, value| puts "#{key}" }
puts
puts "What will it be?"
