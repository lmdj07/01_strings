#first_attempt_at_coding

#class Allowance

  #def initialize ()
    #@balance = 1000
    #puts "Your opening balance is #{@balance}"
    #end
    #end

$Opening_Balance = 1000
$New_House = 650
$Red_Ferrari = 225
$Buy_Tech_Firm = 150
$Worldwide_Cruise = 75
$Pay_Off_Mortgage = 250
$Visit_Las_Vegas = 100
$Six_Months_Off_Work = 50
 

puts "what would you do with a million pounds?"
#puts "your balance is x spend some more"
options = {"New House" => 650,"Red Ferrari" => 225, "Buy Tech-Firm" => 150, "Worldwide Cruise" => 75, "Pay Off Mortgage" => 250, "Visit Las Vegas" => 100, "Six Months No-Work" => 50}
puts
#show user list of options
begin
puts "type 'opt' for options"
user_input = gets.strip
end until user_input == 'opt'
puts
puts "Your choices are:"
puts
options.each { |key, value| puts "#{key}" }
puts
puts "What will you spend on?
.. You have a choice of luxury items 
       up to a million pounds "
puts 
puts "type the last word of your choice 
e.g \"Ferrari\" or \"House\" etc... \(case sensitive\)"
puts
user_choice = gets.chomp

if user_choice == "Ferrari"
puts "Your balance is #{$Opening_Balance - $Red_Ferrari}"

elsif user_choice == "House"
puts "Your balance is #{$Opening_Balance - $New_House}"

elsif user_choice == "Tech-Firm"
puts "Your balance is #{$Opening_Balance - $Buy_Tech_Firm}"

elsif user_choice == "Cruise"
puts "Your balance is #{$Opening_Balance - $Worldwide_Cruise}"

elsif user_choice == "Mortgage"
puts "Your balance is #{$Opening_Balance - $Pay_Off_Mortgage}"

elsif user_choice == "Vegas"
puts "Your balance is #{$Opening_Balance - $Visit_Las_Vegas}"

elsif user_choice == "No-Work"
puts "Your balance is #{$Opening_Balance - $Six_Months_Off_Work}"

else
puts "Keep Shopping"
end


