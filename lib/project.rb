# !/usr/bin/ruby
class Game
  def initialize()
    puts "Rock Paper Scissors".chomp()
    puts "Input 'rock', 'paper' or 'scissors' ".chomp()
    @choices = ['rock', 'paper', 'scissors']
    @player1 = gets.chomp()
    #Two player game
    # @player2 = gets.chomp()
    #Computer game
    @player2 = @choices[rand(2)]
    @player_one_wins = 0
    @player_two_wins = 0

    def player_one_wins
      @player_one_wins
    end
    def player_two_wins
      @player_two_wins
    end

    @@rock = {
      'scissors' => 'win',
      'paper' => 'lose',
      'rock' => 'tie'
    }
    @@scissors = {
      'scissors' => 'tie',
      'paper' => 'win',
      'rock' => 'lose'
    }
    @@paper = {
      'scissors' => 'lose',
      'paper' => 'tie',
      'rock' => 'win'
    }
    if @player1 == 'rock'
      @input1 = @@rock
    elsif @player1 == 'scissors'
      @input1 = @@scissors
    elsif @player1 == 'paper'
      @input1 = @@paper
    end
  end

  def game_win()
    puts @player2
    if @input1.fetch(@player2) == "win"
      puts "You Win"
      # @player_one_wins +=1
    elsif @input1.fetch(@player2) == "lose"
      puts "You Lose"
      # @player_two_wins += 1
    else
      puts "It's a tie"

    end
    # puts @input1.fetch(@player2)
    # puts player_one_wins()
    # puts player_two_wins()
  end
end

game = Game.new()
game.game_win()

# end
