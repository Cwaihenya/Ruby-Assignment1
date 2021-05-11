    class Player
    def hand
  puts "Please input a number"
  puts "0: Goo 1: Choki 2: Par"
  $input_hand= gets.to_i
        while $input_hand <0 or $input_hand >2
          puts "Please input a value that is 0, 1 or 2"
          $input_hand=gets.to_i
        end
        if $input_hand==0
          puts "You choose Goo"
        else if $input_hand==1
          puts "You choose Choki"
        else
          puts "You choose Par"
        end
    end
  end
end

class Enemy
  def hand
  $random_number = rand(0--2)
    puts"Enemy picked #{$random_number}"
  end
end
class Janken
def pon(player_hand, enemy_hand)
  janken = ["Goo", "Choki", "Par"]
  if $random_number==$input_hand
    puts " Tie, play again"
    return true
  elsif $input_hand==0 && $random_number==1 || $input_hand==0 && $random_number==2
  return false
else
  return false
end
end
end
class Gamestart
def self.jankenpon
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new
  next_game = true
  while next_game
    next_game = janken.pon(player.hand, enemy.hand)
  end
end
end
Gamestart.jankenpon
