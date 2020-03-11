## COMPUTERS AGAINST DEVELOPERS

#### Outline

**Computers against Developers** is a terminal app inspired by the game "Cards against Humanity". This is built using Ruby to explore object-oriented programming, as well as modularisation, and DRY scripting principles.

In this version, the user plays against the computer in order to try and win the game, by accumulating the most points against the other computer 'players'.

#### Description

The game opens on a welcome screen and displays a menu of options for the player to choose from. Choosing an option requires user input of a number to specify which menu option they want.

The player is able to view rules, view past scores, start a new game, or exit.

When starting a new game, the computer is the **Code Master**, who deals out the answer-cards to the players, and also asks draws a question card at the beginning of each round for the players to answer.

The Code Master then shuffles the answers given in the round, and the answer cards are presented to the screen, so that we can read the combinations.

The Code Master then randomly selects an answer card from the cards provided, and the player that submitted it wins the round and gains a point.

This repeats until there are no more cards to play.

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

#### R3 Referenced Sources

1. Inspired by the game Cards against humanity

https://cardsagainsthumanity.com/

2. I got inspiration for the card content from a game (also inspired by cards against humanity) called Cards against Developers. I found this game while looking for funny developer problems as inspiration to use for my terminal app.

https://www.cardcastgame.com/browse/deck/3FAGW

#### R4 Source Control Repository

https://github.com/HeyitsmeTazG/compAgainstDevs_terminalApp

# Software Development Plan

### R5 Purpose & Scope

### R6 Features

**Current**

**1.** Display menu, and allow selection using user input to choose an option:

- View rules
- View high scores
- Start New Game
- Exit

**2.** Cards are randomly pulled from an array and distributed among players using **.pop**, which is defined in **deal_card** method.
**3.** **show_hand** is a method which allows the player to view the cards they have in their hand.
**4.** Player is able to choose which card to submit each round, which is executed after being prompted for user input.
**5.** Method to display all answer combinations from players (both Human and Computer) so that the game is more interactive and fun for the user.
**6.** Method that randomly selects winner of each round.
**7.** A point is allocated to the winner of the round and is stored in the players individual point total.
**8.** Loops are used to run through the Game Play until there are no cards remaining for each element.
For example:

- Dealing the cards to the players.
- Dealing question cards.

**9.** The winner of the game is calculated by comparing each players point total, and determining which player has the most points.
**10.** There are 2 posible outcomes of the game:

- Either the Human Player wins, and the terminal displays a congratulatory message, or
- One of the computer player wins, in which case Computers have defeated Humans, and a message indicates that Computers will take over the world.

**Possible**
While designing this app, there were a few features I wanted to include, but were unfortunately outside of my scope to execute for the time-frame of this project.

Some of the features I would have liked to include are:

- Linking multiple terminals together so that friends could play with each other in the same game.
- Allow players to rotate between being Code Master and a Human Player.
- Allow Code Master to manually select favourite answer card.
- Re-fill players hand back up to minimum amount of cards until there are no cards left in answer card deck.

##### R7, R8, R9??? Design and Implementation

Computers Against Developers was created in three days as part of Terminal Application using Ruby Assignment at Coder Academy.

I originally planned on creating a horror game, but realised that any ideas I had for this were either too simple to meet the Assessment Criteria, or too far beyond my scope to execute within 3 days.

I settled on this Cards Against Humanity inspired game instead, and began by listing all of the features of the game, which I have outlined in my Trello Board (see Project Timeline and Planning Process).

I then began writing some code in order to structure my ideas, but quickly realised that documenting my plans was a much better idea, and set off to build a Flowchart which clearly outlines the Game Play, Features, and User Interaction.

## Flowchart of story pathways and functions:
### R7 Outline of User Interaction

### R8 Flow Control Diagram

### R9 Implementation Plan

##### Code Structure

**Gems used**

### R10 Instructions for use

---

##### Build Status

**Complete, in progress etc**

---

##### Instructions for use

- how to download && run through terminal

---



##### Testing

---

##### Project timeline and Planning Process(Trello)

**Reword this:**

The project timeline was managed through Trello and updated as I progressed. My Trello board listed all tasks that needed to be completed, features, gems, user stories, bugs etc.

---

##### Copyright, ethical and social issues

---
