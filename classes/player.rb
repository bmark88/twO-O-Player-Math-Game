module Person

  class Player
    attr_accessor :id, :lives

    def initialize(id, lives)
      @id = id
      @lives = lives.to_i
    end

    def lose_life
      self.lives = self.lives - 1
    end
  end

end

include Person


# 1. Player class
#   - Has player id, player lives