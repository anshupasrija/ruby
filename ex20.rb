class Player
 attr_accessor :name
 def initialize(name)
   @name = name
   @lives = 3
 end

 def take_life
 @lives -=1
 end

 def dead
   @lives ==0
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
 def ask
   puts "What is the sum of #{@number1} and #{@number2}?"
 end

 def check_answer?(input)
   @answer == input
 end

end

class Game
  def initialize()
    @player1 = Player.new('player1')
    @player2 = Player.new('player2')  
    @current_player = ''
  end
def start
  puts "Welcome to the game" 
  @current_player = @player1
  puts @current_player.name
  question = Questions.new
  question.ask
  print "> "
  @userinput = $stdin.gets.chomp
  if question.check_answer?(@userinput)
    puts 'Yes! You are correct.' 
  else
    puts 'Seriously? No!'  
      @current_player.take_life  
  end

end

def check_score

end

def turn

end

def winner

end

end 

game = Game.new
game.start


# test2 = Questions.new
# p test2


