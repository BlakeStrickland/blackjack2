#This will be a ruby application for black jack.
#4-8 Decks, dealer stands on soft 17
#input will be of a coherent player with strict regulations
# for input.
#all possibilies will be accounted for in the end, but to
#start only the first move will be determined.


# Hit
# Stand
# Double if allowed, otherwise hit
# Double if allowed, otherwise stand
# Split
# Split if double after split is allowed, otherwise Hit
# Surrender if allowed, otherise hit

#Validate user input and dealers card

require 'byebug'
def optimal(players_sum, dealers_card, type)
  move = type[[players_sum, dealers_card]]
  if move[0].downcase == "h"
    puts "Your optimal move is to --  Hit  -- at this time"
  elsif move[0].downcase == "s"
    puts "Your optimal move is to --  Stand  -- at this time"
  elsif move[1].downcase == "h"
    puts "Your optimal move is to --  Double if allowed, otherwise hit  -- at this time"
  elsif move[1].downcase == "s"
    puts "Your optimal move is to --  Double if allowed, otherwise stand  -- at this time"
  elsif move[1].downcase == "p"
    puts "Your optimal move is to --  Split  -- at this time"
  elsif move[0].downcase == "p"
    puts "Your optimal move is to --  Split if double after split is allowed, otherwise Hit  -- at this time"
  elsif move[0].downcase == "r"
    puts "Your optimal move is to --  Surrender if allowed, otherise hit  -- at this time"
  else
    puts "something went wrong1"
  end
end

def play_again
  puts "Play again?"
  play_again = gets.chomp
  if play_again[0].downcase == "y"
    players_sum = 10
  end
end

def letter_cards(card, players_cards)
  if card.downcase == "a"
    card = 11
    players_cards << card
    players_cards = players_cards.delete_if {|card| card == 0}
  elsif card.downcase == "k" || card.downcase == "q" || card.downcase == "j"
    card = 10
    players_cards << card
    players_cards = players_cards.delete_if {|card| card == 0}
  else
    players_cards << card
  end
end

def dealer_hits(dealers_sum, dealers_cards, players_sum)
  if dealers_sum < 16
    dealers_cards << rand(1..11)
    dealers_sum = dealers_cards.inject{|sum, x| sum + x }

    if dealers_sum == 21
      puts "Dealer has Blackjack"
    elsif dealers_sum > players_sum
      puts "Dealer wins"
    elsif dealers_sum > 21
      puts "Dealer Busts"
    elsif players_sum > 21
      puts "Bust"
    elsif players_sum == dealers_sum && players_sum <= 21
      puts "Equal"
    elsif players_sum > dealers_sum
      puts "You win!"
    end
  end
end

#hard
hard = {
  [4, 2] => "Hit",[4, 3] => "Hit",[4, 4] => "Hit",[4, 5] => "Hit",[4, 6] => "Hit",[4, 7] => "Hit",[4, 8] => "Hit",[4, 9] => "Hit",[4, 10] => "Hit",[4, 11] => "Hit",
  [5, 2] => "Hit",[5, 3] => "Hit",[5, 4] => "Hit",[5, 5] => "Hit",[5, 6] => "Hit",[5, 7] => "Hit",[5, 8] => "Hit",[5, 9] => "Hit",[5, 10] => "Hit",[5, 11] => "Hit",
  [6, 2] => "Hit",[6, 3] => "Hit",[6, 4] => "Hit",[6, 5] => "Hit",[6, 6] => "Hit",[6, 7] => "Hit",[6, 8] => "Hit",[6, 9] => "Hit",[6, 10] => "Hit",[6, 11] => "Hit",
  [7, 2] => "Hit",[7, 3] => "Hit",[7, 4] => "Hit",[7, 5] => "Hit",[7, 6] => "Hit",[7, 7] => "Hit",[7, 8] => "Hit",[7, 9] => "Hit",[7, 10] => "Hit",[7, 11] => "Hit",
  [8, 2] => "Hit",[8, 3] => "Hit",[8, 4] => "Hit",[8, 5] => "Hit",[8, 6] => "Hit",[8, 7] => "Hit",[8, 8] => "Hit",[8, 9] => "Hit",[8, 10] => "Hit",[8, 11] => "Hit",
  [9, 2] => "Hit",[9, 3] => "Dh",[9, 4] => "Dh",[9, 5] => "Dh",[9, 6] => "Dh",[9, 7] => "Hit",[9, 8] => "Hit",[9, 9] => "Hit",[9, 10] => "Hit",[9, 11] => "Hit",
  [10, 2] => "Dh",[10, 3] => "Dh",[10, 4] => "Dh",[10, 5] => "Dh",[10, 6] => "Dh",[10, 7] => "Dh",[10, 8] => "Dh",[10, 9] => "Dh",[10, 10] => "Hit",[10, 11] => "Hit",
  [11, 2] => "Dh",[11, 3] => "Dh",[11, 4] => "Dh",[11, 5] => "Dh",[11, 6] => "Dh",[11, 7] => "Dh",[11, 8] => "Dh",[11, 9] => "Dh",[11, 10] => "Dh",[11, 11] => "Hit",
  [12, 2] => "Hit",[12, 3] => "Hit",[12, 4] => "S",[12, 5] => "S",[12, 6] => "S",[12, 7] => "Hit",[12, 8] => "Hit",[12, 9] => "Hit",[12, 10] => "Hit",[12, 11] => "Hit",
  [13, 2] => "S",[13, 3] => "S",[13, 4] => "S",[13, 5] => "S",[13, 6] => "S",[13, 7] => "Hit",[13, 8] => "Hit",[13, 9] => "Hit",[13, 10] => "Hit",[13, 11] => "Hit",
  [14, 2] => "S",[14, 3] => "S",[14, 4] => "S",[14, 5] => "S",[14, 6] => "S",[14, 7] => "Hit",[14, 8] => "Hit",[14, 9] => "Hit",[14, 10] => "Hit",[14, 11] => "Hit",
  [15, 2] => "S",[15, 3] => "S",[15, 4] => "S",[15, 5] => "S",[15, 6] => "S",[15, 7] => "Hit",[15, 8] => "Hit",[15, 9] => "Hit",[15, 10] => "Rh",[15, 11] => "Hit",
  [16, 2] => "S",[16, 3] => "S",[16, 4] => "S",[16, 5] => "S",[16, 6] => "Dh",[16, 7] => "Hit",[16, 8] => "Hit",[16, 9] => "Rh",[16, 10] => "Rh",[16, 11] => "Rh",
  [17, 2] => "S",[17, 3] => "S",[17, 4] => "S",[17, 5] => "S",[17, 6] => "S",[17, 7] => "S",[17, 8] => "S",[17, 9] => "S",[17, 10] => "S",[17, 11] => "S",
  [18, 2] => "S",[18, 3] => "S",[18, 4] => "S",[18, 5] => "S",[18, 6] => "S",[18, 7] => "S",[18, 8] => "S",[18, 9] => "S",[18, 10] => "S",[18, 11] => "S",
  [19, 2] => "S",[19, 3] => "S",[19, 4] => "S",[19, 5] => "S",[19, 6] => "S",[19, 7] => "S",[19, 8] => "S",[19, 9] => "S",[19, 10] => "S",[19, 11] => "S",
  [20, 2] => "S",[20, 3] => "S",[20, 4] => "S",[20, 5] => "S",[20, 6] => "S",[20, 7] => "S",[20, 8] => "S",[20, 9] => "S",[20, 10] => "S",[20, 11] => "S",
  [21, 2] => "S",[21, 3] => "S",[21, 4] => "S",[21, 5] => "S",[21, 6] => "S",[21, 7] => "S",[21, 8] => "S",[21, 9] => "S",[21, 10] => "S",[21, 11] => "S"
       }

#Test that these cords match what they are supposed to be in table
  #Add randomized testing
  # puts "Hard Hit - #{hard[[9,9]]}"
  # puts "Hard Dh - #{hard[[11,5]]}"
  # puts "Hard S - #{hard[[15,2]]}"
  # puts "Hard Rh - #{hard[[16,10]]}"
  # puts ""


  #soft
soft = {
  [13, 2] => "Hit",[13, 3] => "Hit",[13, 4] => "Hit",[13, 5] => "Dh",[13, 6] => "Dh",[13, 7] => "Hit",[13, 8] => "Hit",[13, 9] => "Hit",[13, 10] => "Hit",[13, 11] => "Hit",
  [14, 2] => "Hit",[14, 3] => "Hit",[14, 4] => "Hit",[14, 5] => "Dh",[14, 6] => "Dh",[14, 7] => "Hit",[14, 8] => "Hit",[14, 9] => "Hit",[14, 10] => "Hit",[14, 11] => "Hit",
  [15, 2] => "Hit",[15, 3] => "Hit",[15, 4] => "Dh",[15, 5] => "Dh",[15, 6] => "Dh",[15, 7] => "Hit",[15, 8] => "Hit",[15, 9] => "Hit",[15, 10] => "Hit",[15, 11] => "Hit",
  [16, 2] => "Hit",[16, 3] => "Hit",[16, 4] => "Dh",[16, 5] => "Dh",[16, 6] => "Dh",[16, 7] => "Hit",[16, 8] => "Hit",[16, 9] => "Hit",[16, 10] => "Hit",[16, 11] => "Hit",
  [17, 2] => "Hit",[17, 3] => "Dh",[17, 4] => "Dh",[17, 5] => "Dh",[17, 6] => "Dh",[17, 7] => "Hit",[17, 8] => "Hit",[17, 9] => "Hit",[17, 10] => "Hit",[17, 11] => "Hit",
  [18, 2] => "S",[18, 3] => "Ds",[18, 4] => "Ds",[18, 5] => "Ds",[18, 6] => "Ds",[18, 7] => "S",[18, 8] => "S",[18, 9] => "Hit",[18, 10] => "Hit",[18, 11] => "Hit",
  [19, 2] => "S",[19, 3] => "S",[19, 4] => "S",[19, 5] => "S",[19, 6] => "S",[19, 7] => "S",[19, 8] => "S",[19, 9] => "S",[19, 10] => "S",[19, 11] => "S"
      }

  # puts "Soft Hit - #{soft[[13,2]]}"
  # puts "Soft Dh - #{soft[[15,5]]}"
  # puts "Soft Ds - #{soft[[18,5]]}"
  # puts "Soft S - #{soft[[19,6]]}"
  # # puts "Soft S - #{if soft[[20,5]] ? puts "Unkown1" : puts "Unknown2"}"
  # puts ""
  #soft

splits = {
  [4, 2] => "Ph",[4, 3] => "Ph",[4, 4] => "P",[4, 5] => "P",[4, 6] => "P",[4, 7] => "P",[4, 8] => "Hit",[4, 9] => "Hit",[4, 10] => "Hit",[4, 11] => "Hit",
  [6, 2] => "Ph",[6, 3] => "Ph",[6, 4] => "P",[6, 5] => "P",[6, 6] => "P",[6, 7] => "P",[6, 8] => "Hit",[6, 9] => "Hit",[6, 10] => "Hit",[6, 11] => "Hit",
  [8, 2] => "Hit",[8, 3] => "Hit",[8, 4] => "Hit",[8, 5] => "Ph",[8, 6] => "Ph",[8, 7] => "Hit",[8, 8] => "Hit",[8, 9] => "Hit",[8, 10] => "Hit",[8, 11] => "Hit",
  [12, 2] => "Ph",[12, 3] => "P",[12, 4] => "P",[12, 5] => "P",[12, 6] => "P",[12, 7] => "P",[12, 8] => "Hit",[12, 9] => "Hit",[12, 10] => "Hit",[12, 11] => "Hit",
  [14, 2] => "P",[14, 3] => "P",[14, 4] => "P",[14, 5] => "P",[14, 6] => "P",[14, 7] => "P",[14, 8] => "Hit",[14, 9] => "Hit",[14, 10] => "Hit",[14, 11] => "Hit",
  [16, 2] => "P",[16, 3] => "P",[16, 4] => "P",[16, 5] => "P",[16, 6] => "P",[16, 7] => "P",[16, 8] => "P",[16, 9] => "P",[16, 10] => "P",[16, 11] => "P",
  [18, 2] => "P",[18, 3] => "P",[18, 4] => "P",[18, 5] => "P",[18, 6] => "P",[18, 7] => "S",[18, 8] => "P",[18, 9] => "P",[18, 10] => "S",[18, 11] => "S",
  [22, 2] => "P",[22, 3] => "P",[22, 4] => "P",[22, 5] => "P",[22, 6] => "P",[22, 7] => "P",[22, 8] => "P",[22, 9] => "P",[22, 10] => "P",[22, 11] => "P"
          }

  # puts "Splits Ph - #{splits[[4,2]]}"
  # puts "Splits Hit - #{splits[[8,3]]}"
  # puts "Splits P - #{splits[[16,8]]}"
  # puts "Splits S - #{splits[[18,7]]}"
  # puts ""


suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
players_cards = []
dealers_cards = []
puts "You have entered the Blackjack guide"

puts "Enter your first card"
first_card = gets.chomp
players_cards << first_card.to_i
puts "Enter your second card"
second_card = gets.chomp
players_cards << second_card.to_i

puts "Enter dealers card"
dealers_card = gets.chomp
dealers_cards << dealers_card.to_i
dealers_cards << rand(1..11)
dealers_sum = dealers_cards.inject{|sum, x| sum + x }



if !(first_card.to_i.to_s == first_card || first_card.to_f.to_s == first_card)
  letter_cards(first_card, players_cards)
end
if !(second_card.to_i.to_s == second_card || second_card.to_f.to_s == second_card)
  letter_cards(second_card, players_cards)
end
if !(dealers_card.to_i.to_s == dealers_card || dealers_card.to_f.to_s == dealers_card)
  letter_cards(dealers_card, dealers_cards)
end


dealers_sum = dealers_cards.inject{|sum, x| sum + x }
players_sum = players_cards.inject{|sum, x| sum + x }
hand = "hard"

if dealers_sum == 21
  puts "Natural"
end

while players_sum <= 21 && dealers_sum != 21
  if players_sum == 21
    puts "Player has Blackjack!"
    break
  elsif hand[0].downcase == "h"
    puts "Hard Hand"
    optimal(players_sum, dealers_cards.first, hard)
    puts "What will be your next move?"
    next_move = gets.chomp
    if next_move.downcase == "hit"
      card = rand(2..11)
      players_cards << card
      players_sum = players_cards.inject{|sum, x| sum + x }
      dealer_hits(dealers_sum, dealers_cards, players_sum)
      puts "Players cards: #{players_cards} : #{players_sum}"
    elsif next_move.downcase == "stand"
      dealer_hits(dealers_sum, dealers_cards, players_sum)
      puts "Dealers cards: #{dealers_cards} #{dealers_sum}"
      puts "Players cards: #{players_cards} : #{players_sum}"
      break
    elsif next_move.downcase == "double"
      card = rand(2..11)
      players_cards << card
      players_sum = players_cards.inject{|sum, x| sum + x }
      dealer_hits(dealers_sum, dealers_cards, players_sum)
      puts "Dealers cards: #{dealers_cards} #{dealers_sum}"
      puts "Players cards: #{players_cards} : #{players_sum}"
      break
    elsif next_move.downcase == "split"
      first_pair = []
      second_pair = []
      first_pair << players_cards.first
      second_pair<< players_cards.last
      card = rand(2..11)
      first_pair << card
      card2 = rand(2..11)
      players_pair << card
      players_sum_1 = first_pair.inject{|sum, x| sum + x }
      puts "#{players_sum_1}"

      if players_sum_1 > dealers_sum && players_sum_1 <= 21
        puts "You Win!"
        puts "Dealers cards: #{dealers_cards} #{dealers_sum}"
        puts "Players cards: #{players_sum}"
        break
      elsif players_sum_1 == dealers_sum && players_sum_1 <= 21
        puts "equal"
        break
      elsif players_sum_1 == 21
        puts "Blackjack"
        break
      else
        puts "bust"
        puts "#{players_sum_1}"
        break
      end
      players_sum_2 = first_card.inject{|sum, x| sum + x }
      puts "#{players_sum_2}"
      if players_sum_2 > dealers_sum && players_sum_2 <= 21
        puts "You Win!"
        puts "Dealers cards: #{dealers_cards} #{dealers_sum}"
        puts "Players cards: #{players_cards} : #{players_sum}"
        break
      elsif players_sum_2 == dealers_sum && players_sum_2 <= 21
        puts "equal"
        break
      elsif players_sum_2 == 21
        puts "Blackjack"
        break
      else
        puts "bust"
        break
      end
    end
  elsif hand[1].downcase == "p"
    puts "split"
    if optimal(players_cards, dealers_cards.first, splits)
      puts "What will be your next move?"
      move = gets.chomp
    end
  elsif hand[0].downcase == "s"
    puts "soft"
    if optimal(players_cards, dealers_cards.first, soft)
      puts "What will be your next move?"
      move = gets.chomp
    end
  else
   puts "something went wrong"
  end
end

# puts "Your cards are: The #{first_card} and the #{second_card}"
# puts "Sum = #{player}"
# puts "Dealers show card = #{show}"
#////////
#add sum dealers here later
# optimal(player, dealer, hard)
