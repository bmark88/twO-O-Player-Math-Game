module Questions
  
  class Question
    attr_accessor :title, :answer

    def initialize(title, answer)
      @title = title
      @answer = answer
    end
  end

end

include Questions

# 3. Question class
#   - Generates an actual question to be asked
#   - Has a correct answer