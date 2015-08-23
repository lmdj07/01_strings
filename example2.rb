#example


hash = {"code" => "ruby"}

hash["hello"] = "world"

hash["good"] = 15

key = gets.chomp



if hash[key]
   puts hash[key]
else 
  puts "that is not available"
  
end
