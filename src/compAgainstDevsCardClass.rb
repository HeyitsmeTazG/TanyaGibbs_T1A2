class Card
    attr_reader :value
    
    def initialize(card_text)
        @value = card_text
    end
end

class QuestionCard < Card
    def initialize(question_card)
        @question_card = question_card
    end
end

class AnswerCard < Card
    def initialize(answer_card)
        @answer_card = answer_card
    end
end


# Move these into CSV file if have time

# question_cards = [
#     Card.new("After ten years working as a developer I am addicted to ____________."),
#     Card.new("Fixing your father’s computer with ____________."),
#     Card.new("The previous developer left because of ____________."),
#     Card.new("But Google is using _______ so we should too!"),
#     Card.new("Every time someone brings up _________, I throw up a little in my mouth."),
#     Card.new("Implementing _____________ should only take 2 lines of code."),
#     Card.new("If you’re using __________, you’re gonna have a bad time."),
#     Card.new("Only half of programming is coding. The other half is dealing with ________."),
#     Card.new("I think maybe I’ll leave _________ off my resume."),
#     Card.new("If ________ is the answer, you are asking the wrong question."),
#     Card.new("__________: Easy one-step installation."),
#     Card.new("Our release schedule has no time for ____________."),
#     Card.new("Restoring from backups failed due to ____________."),
#     Card.new("For a developer to graduate to senior level, they must be fluent in ________."),
#     Card.new("___________ is a feature, not a bug"),
#     Card.new("____________  as a service"),
#     Card.new("My eyes started bleeding when I opened the editor and saw __________."),
#     Card.new("Sad, but true: our team is addicted to ________.")
# ]

# answer_cards = [
#     Card.new("Browsing StackOverflow for hours without actually looking for a solution"),
#     Card.new("Facebook identity theft"),
#     Card.new("Extremely casual use of sudo"),
#     Card.new("Failed sprints"),
#     Card.new("My browsing history"),
#     Card.new("Fluffy cat gifs"),
#     Card.new("Listening to Nickelback"),
#     Card.new("FizzBuzz"),
#     Card.new("Rethoric comments in code"),
#     Card.new("Sadness"),
#     Card.new("Terminal magic"),
#     Card.new("Sarcastic code review comments"),
#     Card.new("The cult of Mac"),
#     Card.new("Ruby"),
#     Card.new("Turning it off and on again"),
#     Card.new("Code comments written in a foreign language"),
#     Card.new("Novice programmers"),
#     Card.new("Syntax errors"),
#     Card.new("Coding while spooning"),
#     Card.new("GitHub"),
#     Card.new("Comic Sans"),
#     Card.new("Doing production deploys while drunk"),
#     Card.new("Women in tech"),
#     Card.new("Coding and drinking in equal proportions"),
#     Card.new("Sad developers"),
#     Card.new("Not giving a shit about future maintainers of your code"),
#     Card.new("Equating coding skill with sexual prowess"),
#     Card.new("Arrays"),
#     Card.new("Programming drunk"),
#     Card.new("Code without comments")
# ]
