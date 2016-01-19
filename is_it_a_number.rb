puts "Please enter a number"
input = gets.chomp
count = 1
while input
  if input.to_i
    total = input + input
    sum = (total/count)
  else
    puts "Incorrect format."
    puts "Process terminated"
    break
  end
end
