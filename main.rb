require_relative "classes/player.rb"
require_relative "classes/question.rb"
require_relative "classes/game.rb"

player1 = Player.new('1', 3)
player2 = Player.new('2', 3)
game1 = Game.new(player1, player2)

game1.start