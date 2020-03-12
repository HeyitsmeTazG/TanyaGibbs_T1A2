require_relative 'compAgainstDevsCardClass'

class Game 
    attr_accessor :answer_cards
    attr_reader   :question_cards, :hand_size, :players

    def initialize(question_cards, players, hand_size)
       
        @question_cards = question_cards
        @answer_cards = nil
        @hand_size = hand_size
        @players = players

        if question_cards == nil
            raise "Question card deck cannot be empty"
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
        
    end

    def get_question
        card = question_cards.sample()
        return card.value
    end

    # This method is to show the cards in a players hand. If the card ID (number of cards player has) is less than the number of cards that should be allocated, another card is dealt. This loops around for each of the players until they have the right amount of cards as indicated by the hand_size argument.
    # Once the hand size is met, the loop breaks.
    def show_hand(player_ID)
        card_ID = 0
        print_with_pause("Here are your cards...".colorize(:red))
        print_with_pause("Choose wisely...".colorize(:red))
        while card_ID < hand_size
            line_number = card_ID + 1
            puts (line_number.to_s + ". " + players[player_ID].cards[card_ID].value).colorize(:black).on_white
            card_ID = card_ID + 1
        end
    end

    def deal_card(cards)
        if cards && cards.length() > 0
            index = rand(cards.count)
            this_card = cards[index]
            cards.delete_at(index)

            return this_card
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

    def play_game(game_cards)
        @answer_cards = game_cards
        deal_hand
        show_hand(0)
        question = get_question()
        puts question

        print_with_pause("What answer do you choose?".colorize(:red))
        round_answer = gets.chomp #todo check that answer is between 1 and 7
        print_with_pause("The answer you have chosen is...".colorize(:red))
        answer = ""
        card_ID = 0
        while card_ID < hand_size
            if round_answer.to_i == card_ID + 1
                answer = players[0].cards[card_ID].value
                break
            end
            card_ID = card_ID + 1
        end
        wait(1)
        (question["_____"] = answer).colorize(:black).on_white
        puts question

        #todo create new method called play_round
        # in play_game, we have a loop of hand_size. in each loop we call play_round
    end

    # def start
    #     # Deal hand
    #     deal_hand(@hand_size, @players)

    #     # Keep playing until there is winner
    #     play_round()

    #     # Once there is a winner, we exit. 
    # end

end

