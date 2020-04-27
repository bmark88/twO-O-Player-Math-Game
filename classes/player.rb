module Person

  class Player
    attr_accessor :player_num

    def initialize(player_num)
      @player_num = player_num
    end
  end

end

include Person

# 1. Player class
#   - Has player number, score, player lives