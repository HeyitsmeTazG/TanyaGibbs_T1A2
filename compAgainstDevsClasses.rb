class Card
    attr_reader :value
    
    def initialize(answer_card)
        @answer_card = answer_card
    end
end

class Game 
    attr_accessor :answer_cards
    attr_reader   :question_cards, :hand_size, :players

    def initialize(question_cards, answer_cards, players, hand_size)
        if question_cards == nil || answer_cards == nil
            raise "Neither deck should be empty"
        end

        @question_cards = question_cards
        @answer_cards = answer_cards
        @hand_size = hand_size
        @players = players
    end

    def deal_card(cards)
        if cards && cards.length() > 0
            return cards.pop()
        else 
            raise "No cards remaining!"
        end
    end

    def  deal_question_card
       return deal_card(question_cards)
    end 

    def deal_answer_card
       return deal_card(answer_cards)
    end

    def deal_hand(hand_size, players)
        dealt = 0
        while dealt < hand_size 
            for player in players
               player.cards.push(deal_answer_card)
            end 
            dealt = dealt + 1
        end
        return players
        puts players
    end


    def play_round
        # Show question card
        # Display hand
        # Choose answer card
        # Winner of round is generated

        
    end

    def start
        # Deal hand
        deal_hand(@hand_size, @players)

        # Keep playing until there is winner
        play_round()

        # Once there is a winner, we exit. 
    end
end

class Player
    attr_accessor :cards
    attr_reader :name

    def initialize(name)
        @name = name
        @cards = []
    end
end

question_cards = [
    Card.new("After ten years working as a developer I am addicted to ____________."),
    Card.new("Fixing your father’s computer with ____________."),
    Card.new("The previous developer left because of ____________."),
    Card.new("But Google is using _______ so we should too!"),
    Card.new("Every time someone brings up _________, I throw up a little in my mouth."),
    Card.new("Implementing _____________ should only take 2 lines of code."),
    Card.new("If you’re using __________, you’re gonna have a bad time."),
    Card.new("Only half of programming is coding. The other half is dealing with ________."),
    Card.new("I think maybe I’ll leave _________ off my resume."),
    Card.new("If ________ is the answer, you are asking the wrong question."),
    Card.new("__________: Easy one-step installation."),
    Card.new("Our release schedule has no time for ____________."),
    Card.new("Restoring from backups failed due to ____________."),
    Card.new("For a developer to graduate to senior level, they must be fluent in ________."),
    Card.new("___________ is a feature, not a bug"),
    Card.new("____________  as a service"),
    Card.new("My eyes started bleeding when I opened the editor and saw __________."),
    Card.new("Sad, but true: our team is addicted to ________.")
]

answer_cards = [
    Card.new("Browsing StackOverflow for hours without actually looking for a solution"),
    Card.new("Facebook identity theft"),
    Card.new("Extremely casual use of sudo"),
    Card.new("Failed sprints"),
    Card.new("My browsing history"),
    Card.new("Fluffy cat gifs"),
    Card.new("Listening to Nickelback"),
    Card.new("FizzBuzz"),
    Card.new("Rethoric comments in code"),
    Card.new("Sadness"),
    Card.new("Terminal magic"),
    Card.new("Sarcastic code review comments"),
    Card.new("The cult of Mac"),
    Card.new("Ruby"),
    Card.new("Turning it off and on again"),
    Card.new("Code comments written in a foreign language"),
    Card.new("Novice programmers"),
    Card.new("Syntax errors"),
    Card.new("Coding while spooning"),
    Card.new("GitHub"),
    Card.new("Comic Sans"),
    Card.new("Doing production deploys while drunk"),
    Card.new("Women in tech"),
    Card.new("Coding and drinking in equal proportions"),
    Card.new("Sad developers"),
    Card.new("Not giving a shit about future maintainers of your code"),
    Card.new("Equating coding skill with sexual prowess"),
    Card.new("Arrays"),
    Card.new("Programming drunk"),
    Card.new("Code without comments")
]

players = [
    Player.new("User"),
    Player.new("Steph"),
    Player.new("Glen"),
    Player.new("Matt")
]

game = Game.new(question_cards, answer_cards, players, 2)
# game.start()


# class Answer_card
#     attr_reader :answer_card
    
#     def initialize(answer_card)
#     @answer_card = answer_card

#     end
# end

# def answer_card 
#     puts "#{answer1}"
#     return true
# end


# answer1 = Answer_card.new("Browsing StackOverflow for hours without actually looking for a solution")
# puts answer1.answer_card

# CSV FILE:! string one, string two, "After ten years working as\,  a developer I am addicted to ____________.", 

# ['string one', 'string two','string one']