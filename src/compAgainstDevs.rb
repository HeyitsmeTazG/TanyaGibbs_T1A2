require 'colorize'
require 'tty-cursor'
require_relative 'compAgainstDevsGameClass'
require_relative 'compAgainstDevsCardClass'
require_relative 'compAgainstDevsPlayerClass'

# require_relative 'compAgainstDevsTest'

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

game = Game.new(question_cards, answer_cards, players, 7)
game.deal_hand()
game.show_hand(0)
# game.show_hand(1)
# game.show_hand(2)
# game.show_hand(3)
# game.show_question(0)
# puts game
 
# def gets_player_input(options)
#   loop do
#     puts options
#     input = gets.chomp
#     legitimate_choice = yield(input)
#     if legitimate_choice == true
#       return
#     end
#   end
# end

# gets_player_input("Choose rock paper or scissors") do |input|
#   # puts 'second'
#   if ['rock', 'paper', 'scissors'].include? input
#     true
#   end
# end

# gets_player_input("What square do you choose?") do |input|
#   if ['A1', 'A2','A3', 'B1'].include? input
#     true
#   end
# end


