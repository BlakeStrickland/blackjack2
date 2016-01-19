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

#hard

hard = {[4, 2] => "Hit",[4, 3] => "Dh",[4, 4] => "Dh",[4, 5] => "Dh",[4, 6] => "Dh",[4, 7] => "Hit",[4, 8] => "Hit",[4, 9] => "Hit",[4, 10] => "Hit",[4, 11] => "Hit",
        [5, 2] => "Hit",[5, 3] => "Dh",[5, 4] => "Dh",[5, 5] => "Dh",[5, 6] => "Dh",[5, 7] => "Hit",[5, 8] => "Hit",[5, 9] => "Hit",[5, 10] => "Hit",[5, 11] => "Hit",
        [6, 2] => "Hit",[6, 3] => "Dh",[6, 4] => "Dh",[6, 5] => "Dh",[6, 6] => "Dh",[6, 7] => "Hit",[6, 8] => "Hit",[6, 9] => "Hit",[6, 10] => "Hit",[6, 11] => "Hit",
        [7, 2] => "Hit",[7, 3] => "Dh",[7, 4] => "Dh",[7, 5] => "Dh",[7, 6] => "Dh",[7, 7] => "Hit",[7, 8] => "Hit",[7, 9] => "Hit",[7, 10] => "Hit",[7, 11] => "Hit",
        [8, 2] => "Hit",[8, 3] => "Dh",[8, 4] => "Dh",[8, 5] => "Dh",[8, 6] => "Dh",[8, 7] => "Hit",[8, 8] => "Hit",[8, 9] => "Hit",[8, 10] => "Hit",[8, 11] => "Hit",
        [9, 2] => "Hit",[9, 3] => "Dh",[9, 4] => "Dh",[9, 5] => "Dh",[9, 6] => "Dh",[9, 7] => "Hit",[9, 8] => "Hit",[9, 9] => "Hit",[9, 10] => "Hit",[9, 11] => "Hit",
        [10, 2] => "Hit",[10, 3] => "Dh",[10, 4] => "Dh",[10, 5] => "Dh",[10, 6] => "Dh",[10, 7] => "Hit",[10, 8] => "Hit",[10, 9] => "Hit",[10, 10] => "Hit",[10, 11] => "Hit",
        [11, 2] => "Hit",[11, 3] => "Dh",[11, 4] => "Dh",[11, 5] => "Dh",[11, 6] => "Dh",[11, 7] => "Hit",[11, 8] => "Hit",[11, 9] => "Hit",[11, 10] => "Hit",[11, 11] => "Hit",
        [12, 2] => "Hit",[12, 3] => "Dh",[12, 4] => "Dh",[12, 5] => "Dh",[12, 6] => "Dh",[12, 7] => "Hit",[12, 8] => "Hit",[12, 9] => "Hit",[12, 10] => "Hit",[12, 11] => "Hit",
        [13, 2] => "Hit",[13, 3] => "Dh",[13, 4] => "Dh",[13, 5] => "Dh",[13, 6] => "Dh",[13, 7] => "Hit",[13, 8] => "Hit",[13, 9] => "Hit",[13, 10] => "Hit",[13, 11] => "Hit",
        [14, 2] => "Hit",[14, 3] => "Dh",[14, 4] => "Dh",[14, 5] => "Dh",[14, 6] => "Dh",[14, 7] => "Hit",[14, 8] => "Hit",[14, 9] => "Hit",[14, 10] => "Hit",[14, 11] => "Hit",
        [15, 2] => "Hit",[15, 3] => "Dh",[15, 4] => "Dh",[15, 5] => "Dh",[15, 6] => "Dh",[15, 7] => "Hit",[15, 8] => "Hit",[15, 9] => "Hit",[15, 10] => "Hit",[15, 11] => "Hit",
        [16, 2] => "Hit",[16, 3] => "Dh",[16, 4] => "Dh",[16, 5] => "Dh",[16, 6] => "Dh",[16, 7] => "Hit",[16, 8] => "Hit",[16, 9] => "Hit",[16, 10] => "Hit",[16, 11] => "Hit",
        [17, 2] => "Hit",[17, 3] => "Dh",[17, 4] => "Dh",[17, 5] => "Dh",[17, 6] => "Dh",[17, 7] => "Hit",[17, 8] => "Hit",[17, 9] => "Hit",[17, 10] => "Hit",[17, 11] => "Hit",
        [18, 2] => "Hit",[18, 3] => "Dh",[18, 4] => "Dh",[18, 5] => "Dh",[18, 6] => "Dh",[18, 7] => "Hit",[18, 8] => "Hit",[18, 9] => "Hit",[18, 10] => "Hit",[18, 11] => "Hit",
        [19, 2] => "Hit",[19, 3] => "Dh",[19, 4] => "Dh",[19, 5] => "Dh",[19, 6] => "Dh",[19, 7] => "Hit",[19, 8] => "Hit",[19, 9] => "Hit",[19, 10] => "Hit",[19, 11] => "Hit",
        [20, 2] => "Hit",[20, 3] => "Dh",[20, 4] => "Dh",[20, 5] => "Dh",[20, 6] => "Dh",[20, 7] => "Hit",[20, 8] => "Hit",[20, 9] => "Hit",[20, 10] => "Hit",[20, 11] => "Hit",
        [21, 2] => "Hit",[21, 3] => "Dh",[21, 4] => "Dh",[21, 5] => "Dh",[21, 6] => "Dh",[21, 7] => "Hit",[21, 8] => "Hit",[21, 9] => "Hit",[21, 10] => "Hit",[21, 11] => "Hit",
      }

      #hard = {[4...8, 2] => "Hit"}

      puts hard[[19,4]]










#get first card from user in explicit format
first_card = "Ace of Spades"
#puts "Enter your first card"
#first_card = gets.chomp
#get second card
second_card = "7 of Hearts"
#puts "Enter your second card"
#second_card = gets.chomp
#get the dealers card
dealers_card = "Seven of Clubs"
#puts "Enter dealers card"
#dealers_card = gets.chomp
