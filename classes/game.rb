module GameData

  class Game
    attr_accessor :start

    def initialize
      @in_progress = false
    end

    def start(player1, player2)
      puts "~~~~~~~~GAME STARTING~~~~~~~~"
      puts "Player #{player1.id} starts with #{player1.lives} lives."
      puts "Player #{player2.id} starts with #{player2.lives} lives."
      @in_progress = true 

      while player1.lives > 0 && player2.lives > 0 
        
        if ask_addition_question === false
          player1.lose_life
          puts "Player #{player1.id} has #{player1.lives} lives remaining."
        end
      end

      @in_progress = false
      if @in_progress == false
        puts "Game over!"
      end
    end

    def in_progress?
      @in_progress
    end

    def ask_addition_question
      rand_num1 = (rand()*100).round
      rand_num2 = (rand()*100).round

      puts "What is #{rand_num1} + #{rand_num2}?"
      puts rand_num1 + rand_num2
      
      if gets.chomp.to_i == rand_num1 + rand_num2
        puts "CORRECT! You get to keep your current lives."
        true
      else
        puts "WRONG! You lose one life."
        false
      end
    end

  end
end

include GameData

# 2. Game class (I/O)
#   - Sets up the player turn
#   - Check player lives (lives_left?), if zero then game over
#   - Winner announcer based on lives left comparison operator
#   - Gets player input/answer
#   - Output the question to the player