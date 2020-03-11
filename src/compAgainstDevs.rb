require 'colorize'
require 'tty-cursor'
require 'artii'
require_relative 'compAgainstDevsGameClass'
require_relative 'compAgainstDevsCardClass'
require_relative 'compAgainstDevsPlayerClass'

# require_relative 'compAgainstDevsTest'

question_cards = [
    Card.new("After ten years working as a developer I am addicted to _____."),
    Card.new("Fixing your father’s computer with _____."),
    Card.new("The previous developer left because of _____."),
    Card.new("But Google is using _____ so we should too!"),
    Card.new("Every time someone brings up _____, I throw up a little in my mouth."),
    Card.new("Implementing _____ should only take 2 lines of code."),
    Card.new("If you’re using _____, you’re gonna have a bad time."),
    Card.new("Only half of programming is coding. The other half is dealing with _____."),
    Card.new("I think maybe I’ll leave _____ off my resume."),
    Card.new("If _____ is the answer, you are asking the wrong question."),
    Card.new("_____: Easy one-step installation."),
    Card.new("Our release schedule has no time for _____."),
    Card.new("Restoring from backups failed due to _____."),
    Card.new("For a developer to graduate to senior level, they must be fluent in _____."),
    Card.new("_____ is a feature, not a bug"),
    Card.new("_____  as a service"),
    Card.new("My eyes started bleeding when I opened the editor and saw _____."),
    Card.new("Sad, but true: our team is addicted to _____.")
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


a = Artii::Base.new
puts a.asciify("Computers")

a = Artii::Base.new
puts a.asciify("      Against")

a = Artii::Base.new
puts a.asciify("Developers!")

def waits(time)
    num = time
    sleep_time = [(0.1), (0.4), (1.0), (1.5), (3.0)]
    sleep(sleep_time[num])
end

# waits(2)

def print_with_pause(str, sleep_time = 0.01)
  chars = str.chars
  chars.each do |c|
    print c # work with colorize
    sleep(sleep_time) # if sleep_time is float, unit is second
        end
  puts ""
end

def get_menu
        puts "Main Menu"
        puts "1: View Rules".colorize(:red)
        puts "2: Past Scores".colorize(:red)
        puts "3: Start New Game".colorize(:red)
        puts "4: Exit".colorize(:red)
    return gets.chomp
end


print_with_pause("Welcome, Developer...".colorize(:red))
# waits(2)
puts `clear`
print_with_pause("What is your name?".colorize(:red))
name = "taz"
print_with_pause("Hello #{name}. You are now player 1".colorize(:red))
print_with_pause("Do you really think you can beat us?".colorize(:red))
# waits(2)
puts `clear`



game = Game.new(question_cards, answer_cards, players, 7)
game_alive = true

while game_alive
    user_response = get_menu
    case user_response
        when "1" 
            puts "View Rules"
            game_rules = "Game rules"
            p game_rules
        when "2" 
            puts "Past Scores"
            past_scores = past_scores
            p past_scores
        when "3" 
            puts "Start New Game"
            game.play_round
        when "4" 
            game_alive = false
    end
end


# get_menu
# game.deal_hand()
# game.show_hand(0)
# game.show_hand(1)
# game.show_hand(2)
# game.show_hand(3)
# game.show_question(0)
# puts game

# end


