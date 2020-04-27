require_relative "classes/player.rb"
require_relative "classes/question.rb"
require_relative "classes/game.rb"

player1 = Player.new('1', 3)
player2 = Player.new('2', 3)

# puts player1.id
# puts player2.id

# q1 = Question.new('What is 1 + 1?', 2)
# puts q1.title
# puts q1.answer

# q1.update_question('What is 3 + 3?', 6)
# puts q1.title
# puts q1.answer

game1 = Game.new(player1, player2)
# puts game1.in_progress?
game1.start
# puts game1.in_progress?
# player1.lives