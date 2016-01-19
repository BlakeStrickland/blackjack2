#time in, time out





# puts "Start?"
# approve = gets.chomp()
# approve = approve[0].downcase
# continue = "y"
# t1 = Time.now
# t1 = t1.strftime("it's now %I:%M:%S:%L")
# stop = "n"

# while approve == "y" && stop == "n" do
#   t1 = Time.now
#   t1 = t1.strftime("it's now %I:%M:%S:%L")
#   puts "#{t1}"
#   puts "Stop?"
#   stop = gets.chomp()
#   stop = stop[0].downcase
# end

# start = Time.now
# stop = start + 10*60

loop do
  puts Time.now.strftime("%H:%M:%S")
  sleep(1) 
end


# if approve == "y"
#   if continue== "y"
#     t2 = Time.now
#     t2 = t2.strftime("it's now %I:%M:%S:%L")
#     puts "#{t2}"
#     puts "Continue?"
#     continue = gets.chomp()
#     continue = continue[0].downcase
#     difference = (t1[12..13].to_i) - (t2[12..13].to_i)
#
#   else
#     puts "That was #{difference}"
#   end
# end
