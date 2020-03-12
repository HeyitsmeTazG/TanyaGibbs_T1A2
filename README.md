## COMPUTERS AGAINST DEVELOPERS

#### Outline

**Computers against Developers** is a terminal app inspired by the game "Cards against Humanity". This is built using Ruby to explore **object-oriented programming**, as well as **modularisation**, and **DRY scripting** principles.

In this version, the user plays against the computer in order to try and win the game, by accumulating the most points against the other computer 'players'.

---

#### R3 Referenced Sources

**1. [Cards Against Humanity](https://cardsagainsthumanity.com/)**
The inspiration behind the game, including the Rules.

**2 [Cards against Developers](https://www.cardcastgame.com/browse/deck/3FAGW)**
Very similar to Cards Against Humanity. The only noticable difference is the content on the cards, from which I drew inspiration for my own game.

This game was found when searching for inspiration for funny problems we face as developers.

---

#### R4 Source Control Repository

https://github.com/HeyitsmeTazG/compAgainstDevs_terminalApp

---

### Software Development Plan

#### Game Description

The game opens on a welcome screen and displays a menu of options for the player to choose from. Choosing an option requires user input of a number to specify which menu option they want.

The player is able to View Rules, View Past Scores, Start New Game, or Exit.

When starting a new game, the computer is the **Code Master**, who deals out the answer-cards to the players, and also asks draws a question card at the beginning of each round for the players to answer.

The answer cards are presented to the screen once they have been submitted, so that the user can read all of the combinations.

The Code Master then randomly selects an answer card from the cards provided, and the player that submitted it wins the round and gains a point.

This repeats until there are no more cards to play, and a winner is determined.

---

#### Motivation and Other Ideas

For this assignment, I wanted to be creative, and also build something that I would enjoy playing and sharing with other people.

Board and card games have always been a hobby of mine, so I decided to re-create one of my favourite games, but make it applicable to the struggles we have as developers.

**Other project ideas I explored were:**

- A **horror game** that tries to determine whether the user is Human, or AI based on a series of questions, which are triggered by the answer the user inputs.

Though I would still like to build something like this, I decided against this idea for now, as there weren't many features accessible to the user other than just inputting answers.

When I thought about other potential features I could add, this made me realise that building this is out of my scope at this stage in my learning.

- A **Uni timetable app** that allows students to schedule their classes, coursework and assignments that they have to complete.

This is another project I am still very interested in building, though again, the logistics are out of my scope for now.

I also feel as though this project would be better executed through other programming languages where I could add stylesheets to make the UI more intuitive and accessible.

---

#### R5 Purpose & Scope

**Purpose for the application**

As developers we all need a chance to step away from our work and just have fun, and this is exactly what this game is intended for.

The main purpose for this application is to allow us to let off some steam in order to break up the monotonous repetition of having so fix bug after bug in our code. It makes light of some of the problems we - as developers - face, and aims to bring humour to what can sometimes be a very challenging career.

Sometimes it feels like a battle between us, the developers, and the machines we rely on so heavily to facilitate us in completing our work. This game pits us against each other to find the ultimate champion, **Computers** or **Developers**.

**Scope**

In order to build this app, I have had to learn a lot of different **Developer Tools** in a very short amount of time. I have done my best to include as many of these tools as is possible for this app, though there are some elements which are currently out of my scope (see possible features in R6).

Though the game doesn't function exactly how I would like it to right now, I am confident that I have a thorough understanding of all of the elements I have incorporated, and as a result, I was able to produce a functioning game in less than 3 weeks of learning Ruby.

---

#### R6 Features

**Current Features**

**1.** Display menu, and allow selection using user input to choose an option:

- View rules
- View high scores
- Start New Game
- Exit

**2.** Cards are randomly pulled from an array and distributed among players using **.pop**, which is defined in the **deal_card** method.

**3.** The **show_hand** is a method which allows the player to view the cards they have in their hand.

**4.** Player is able to choose which card to submit each round, which is executed after being prompted for user input.

**5.** A method to display all answer combinations from players (both Human and Computer) so that the game is more interactive and fun for the user.

**6.** A method that randomly selects winner of each round.

**7.** A point is allocated to the winner of the round and is stored in the players individual point total.

**8.** Loops are used to run through the Game Play until there are no cards remaining for each element.
For example:

- Dealing the cards to the players.
- Dealing question cards.

**9.** The winner of the game is calculated by comparing each players point total, and determining which player has the most points.

**10.** The final scores for each player are displayed on the screen.

**11.** There are 2 posible outcomes of the game:

- Either the Human Player wins, and the terminal displays a congratulatory message, or
- One of the computer player wins, in which case Computers have defeated Humans, and a message indicates that Computers will take over the world.

**Possible Features**
While designing this app, there were a few features I wanted to include, but were unfortunately outside of my scope to execute for the time-frame for this project.

Some of the features I would have liked to include are:

- Linking multiple terminals together so that friends could play with each other in the same game.
- Allow players to rotate between being Code Master and a Human Player.
- Allow Code Master to manually select favourite answer card and distribute point accordingly.
- Re-fill players hand back up to minimum amount of cards until there are no cards left in the answer-card deck.

---

#### R7 Outline of User Interaction

**1.** Player is presented with a Welcome screen and menu of options.

**2.** Player chooses one of the options, which triggers a response dependant on what they chose.

**3.** The Player has the option to return to the main menu screen if they choose to either read the instructions, or view high scores.

**4.** Once the game has started, the Player is prompted throughout the game to view cards and select which card they wish to answer the question with.

**5.** The viewer is also able to view all of the answers submitted my each Computer Player in each round, so that the game is more interactive and funny.

**6.** Once all of the rounds have been played, the final scores are calculated and displayed in the terminal.

**7.** The end-of-game screen is determined by whether or not the Human Player won the game, or if it was one of the Computer Players.

**8.** The game ends and the Main Menu re-appears, allowing the user to select one of the options (View Rules, View Scores, Start New Game, or Exit).

---

#### R8, R9 Design and Implementation

Computers Against Developers was created in three days as part of Terminal Application using Ruby Assignment at Coder Academy.

I originally planned on creating a horror game, but realised that any ideas I had for this were either too simple to meet the Assessment Criteria, or too far beyond my scope to execute within 3 days.

I settled on this Cards Against Humanity inspired game instead, and began by listing all of the features of the game, which I have outlined in my Trello Board (see Project Timeline and Planning Process).

I then began writing some code in order to structure my ideas, but quickly realised that documenting my plans was a much better idea, and set off to build a Flowchart which clearly outlines the Game Play, Features, and User Interaction.

After completing the Flowchart, I had a better understanding of how to structure my code, and worked my way through the chart accordingly, incorporating Developer tools such as variables, loops, methods, classes, arrays, and Gems.

Understanding the flow of the game made writing the code itself much easier, and as a result I was able to minimise the amount of time spent in utter confusion trying to fix errors.

#### Flowchart of story pathways and functions:

---

#### Code Structure

---

#### Gems used

Computers Against Developers makes use of a number of Gems to improve the user experience and enhance the overall funcitonality of the game.

<!--
Bundler Is used to handle all Gem installations. To provide an easy setup for the user as all version and dependencies are controlled through it and saved in the gem & gem lock files.
Test-Unit Was used to assist in Test Driven Development. -->

**Colorize** Enables the use of coloured outputs in the Terminal.

<!--
TTY-Cursor To enable the computer to easily navigate the console and delete lines.
TTY-ProgressBar Which enables the ability to easily display and create progress bars. (The file transfers) -->

---

#### R10 Instructions for use

1. Follow these instructions to [download and install Ruby](https://www.ruby-lang.org/en/documentation/installation/) on your computer.

2. Run this command in your terminal

> sh -c "\$(curl -fsSL https://github.com/HeyitsmeTazG/compAgainstDevs_terminalApp/blob/master/src/shell.sh)"

---

#### Build Status

<!-- **Complete, in progress etc** -->

---

#### Testing

---

#### Project timeline and Planning Process

<!-- (Trello) -->

<!-- **Reword this:**

The project timeline was managed through Trello and updated as I progressed. My Trello board listed all tasks that needed to be completed, features, gems, user stories, bugs etc. -->

---

#### Copyright, ethical and social issues

---
