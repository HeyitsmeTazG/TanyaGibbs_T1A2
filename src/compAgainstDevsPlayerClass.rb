class Player
    attr_accessor :cards
    attr_reader :name

    def initialize(name)
        @name = name
        @cards = []
    end

end

class CodeMaster < Player

end

class HumanPlayer < Player

end

class ComputerPlayer < Player

end


