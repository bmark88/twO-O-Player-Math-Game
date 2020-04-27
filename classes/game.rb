module GameData

  class Game
    attr_accessor :start

    def initialize(player1, player2)
      @in_progress = false
      @current_player = player1
      @player1 = player1
      @player2 = player2
    end

    def switch_player
      @current_player == @player1 ? 
      @current_player = @player2 : @current_player = @player1
    end

    def start
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "Player #{@player1.id} starts with #{@player1.lives} lives."
      puts "Player #{@player2.id} starts with #{@player2.lives} lives."
      @in_progress = true
      puts "Player #{@current_player.id} will start. Let the games begin!"
      puts "~~~~~~~~GAME STARTING~~~~~~~~"

      while @player1.lives > 0 && @player2.lives > 0
        
        if ask_addition_question === false
          @current_player.lose_life
          if @current_player.lives >= 1
            puts "Player #{@current_player.id} has #{@current_player.lives} lives remaining."
            puts "~~~~~~~~~~~~"
            puts "NEXT QUESTION!!"
            self.switch_player
            puts "Player #{@current_player.id}, it's your turn. Be careful, you have #{@current_player.lives} lives remaining."
            puts "~~~~~~~~~~~~"
          end
        else 
          puts "~~~~~~~~~~~~"
          puts "NEXT QUESTION!!"
          self.switch_player
          puts "Player #{@current_player.id}, it's your turn. Be careful, you have #{@current_player.lives} lives remaining."
          puts "~~~~~~~~~~~~"
        end
      end

      @in_progress = false

      if @in_progress == false
        if @player1.lives > @player2.lives
          puts "Player #{@player1.id} wins!"
        else
          puts "Player #{@player2.id} wins!"
        end
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
        if @current_player.lives == 1
          puts "You've run out of lives."
        else
          puts "WRONG! You lose one life."
        end
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