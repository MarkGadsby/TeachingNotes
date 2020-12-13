# Animal Board Game

## Your scenario

You have been hired to create a text based board game. Your employer has requested the code is created using object oriented programming and to be maintainable to enable other coders can work on it in the future. This board game needs to run on the Windows operating system so they have requested you write it in C#.

You are creating an animal themed version of a famous board game. In this game players move around a board buying animals, you then charge other players to visit that animal. The last player that still has money wins.

Your players move around a board with 26 spaces (like the example below). They move around by rolling two dice which are added together to determine how far they move.

![](/home/ubuntu/Notes/NoteTree/Kingsdale/Board.png)

If a player rolls a double, they are given the chance to draw a card from the deck. The card will contain a scenario (e.g. “You have won the lottery” / “You owe debt”) and an amount of money they player is given or must pay.

When a player passes start they are given £500. If they land on start they are given £1000. Landing on “miss a turn” means they miss their next turn.

On each space they land there is information about the animal that lives in that space. The animal has a name/species, a level, a cost to stop/visit, a cost to buy and an owner. If the animal has no owner the player is offered the chance to buy it at its set cost. If the animal is already owned by someone else, you must pay the stop cost. The level determines the cost to visit and can be upgraded by the owner. An example of a squirrel animal might be:

![](/home/ubuntu/Notes/NoteTree/Kingsdale/Card.png)
<div style="page-break-after: always;"></div>
### Your program needs to:

Your game will require significant code to manage the points below and, in addition to meeting these criteria, will need to ensure it covers everything outlined in the scenario above.

#### Dice

Have two dice that the player can roll
Tell the player how many spaces to move by
Confirm when two of the same dice have been rolled

#### Board

Have a board with the above spaces which is displayed to the user (via text)
Store the location of each user
Show on the board where each player currently is
Tell the user what to do when they land on that space
Give the player money when they pass (£500) or land on (£1000) start
Tell the player to miss a go when they land on the appropriate square

#### Player

Allow them to pick a text based playing piece (e.g. *, |, ?)
Store their name and announce it on their turn
Store how much money they have
Add to or decrease their money as they play
Tell them that have lost if they run out of money
Tell them they have won if they are the last player in the game

#### Animals

Have an animal assigned to each space on the board
Store the above information for an animal
Allow an animal to be purchased / owned by a particular player at it’s given cost when it currently has no owner
Allow an animal to be upgraded to increase in level at the same cost as it’s purchased for
Tell a player how much they need to pay when stopped on

#### Cards

A pack of 20 cards with various scenarios where players gain / lose money
The ability for a random card to be drawn when needed
