class Player
    attr_accessor :cards
    attr_reader :name

    def initialize(name)
        @name = name
        @cards = []
    end
end


players = [
    Player.new("User"),
    Player.new("Steph"),
    Player.new("Glen"),
    Player.new("Matt")
]