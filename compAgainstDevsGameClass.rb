require_relative 'compAgainstDevsCardClass'

class Game 
    attr_accessor :answer_cards
    attr_reader   :question_cards, :hand_size, :players

    def initialize(question_cards, answer_cards, players, hand_size)
       
        @question_cards = question_cards
        @answer_cards = answer_cards
        @hand_size = hand_size
        @players = players

        if question_cards == nil || answer_cards == nil
            raise "Neither deck should be empty"
        end 

    end

    def deal_hand
        dealt = 0
        while dealt < hand_size 
            for player in players
               player.cards.push(deal_answer_card)
            end 
            dealt = dealt + 1
        end
        return players
        # puts players
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


