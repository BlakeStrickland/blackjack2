#Luhn algorithm

# def is_num?
#   if v =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
#     input
#   else
#     puts "That is not an exceptable input"
#   end
# end

# while input =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
#   n = 2
  # input = input.to_s.split("")
  # input.map!{|x| x.to_i}
  # every_other = (n-1).step(input.size - 1, n).map{ |i| input[i]}
  # every_other.map! { |x| ((x.to_i)*2) }
  #input.each_with_index.map! { |i,k| i if k.even? }.compact
  #a.zip(s).flatten.compact
  # testing = input.zip(every_other).flatten.compact
  # testing = input | every_other
  # puts "#{testing}"
  # puts "#{every_other}"
  # puts "#{input.join} is a valid number"
  # input = gets.chomp

  # evens = input.values_at(* input.each_index.select {|i| i.odd?})
  # odds = input.values_at(* input.each_index.select {|i| i.even?})
  # checksum = odds.map!{|x| x.to_i}.reduce:+
  #
  #
  #
  # puts "Even: #{evens}"
  # puts "Odds: #{odds}"
  # puts "Checksum: #{checksum}"

  #Create the validation method
  def validate(luhn)
    #take the input and make it an array of strings
    numbers = luhn.to_s.split("")
    #save checkdigit
    checkdigit = numbers[numbers.length - 1]
    #grab all other numbers
    numbers[numbers.length - 1] = 0
    numbers.reverse!
    sum=0
    for i in 1..numbers.length
      #sum the even numbers
      if i%2==0
        sum = sum + numbers[i].to_i
        next
      end
      #if the number doubled is greater than 10 subract 9
      #if not just double
      numbers[i] = (numbers[i].to_i*2 < 10 ) ? (numbers[i].to_i*2) : (numbers[i].to_i*2 - 9)
      sum = sum + numbers[i].to_i
    end
     #check modulo and check digit
     (10 - sum%10).to_i == checkdigit.to_i
  end

  loop do
    puts "Please enter a number, (ex. 7992739871)"
    input = gets.chomp
    #must be a number
    if input =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
      if validate(input)
        puts "#{input} is valid"
      else
        puts "#{input} is not valid"
      end
    else
      puts "Incorrect format"
      puts "Retry?"
      again = gets.chomp
      if again[0].downcase == "y"
        redo
      else
        puts "Goodbye"
        break
      end
    end
  end
# sum =============
# a = "18"
# a = a.split("")
# a = a.map! { |x| x.to_i}
# a = a.reduce:+

# total sum ==========
# all_sum = array.map!{|x| x.to_i}.reduce:+
# all_sum = (all_sum * 9)
# if all_sum[-1] == "0"
#   puts "#{} is valid"
# else
#   puts "#{} is not valid"
# end
