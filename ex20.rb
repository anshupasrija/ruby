class Player
 attr_accessor :name ,:lives
 def initialize(name)
   @name = name
   @lives = 3
 end

 def take_life
 @lives -=1
 end

 def dead
   @lives == 0
 end

 def new_question
  newquestion = Questions.new
  newquestion.ask(name)
  print '> '
  @userchoice = $stdin.gets.chomp
  if newquestion.check_answer?(@userchoice.to_i)
    puts 'Yes! You are correct.'
  else
    puts 'Seriously? No!'
    take_life
  end
end

end

# test = Player.new('player1')
# p test.name


class Questions
 def initialize
   @number1 = rand(1..20)
   @number2 = rand(1..20)
   @answer = @number1 + @number2
 end
 def ask(name)
   puts "#{name}: What is the sum of #{@number1} and #{@number2}?"
 end

 def check_answer?(input)
   @answer == input
 end

end

class Game
  def initialize(name)
    @name = name
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')  
  
  end

def start
  puts "Welcome to the game"  
  turn

end

def show_stats
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
end

  def turn
    @player1.new_question
    check_score
    @player2.new_question
    check_score
    show_stats
    puts '---------NEW-TURN---------'
    turn
  end


def check_score
  if @player1.dead
    winner(@player2)
  elsif @player2.dead
    winner(@player1)
  end
end

def winner(player)
  puts "#{player.name} wins with the score of #{player.lives}/3"
  puts '---------GAME-OVER--------'
  puts 'Good bye!'
  exit(0)
end

end 

game = Game.new('Player 1')
game.start
# test2 = Questions.new
# p test2


