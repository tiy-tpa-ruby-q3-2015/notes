## Explorer Mode

Make a 2 player tic-toe-toe game.

  - [ ] The game takes turns receiving input for each player.
  - [ ] The game recognizes when a player has won.
  - [ ] The board should be updated as it's state changes when people make moves.
  - [ ] If board is full before there is a winner, declare a tie.
  - [ ] Provide feedback for invalid moves (i.e. a player attempts to move in a space that's already filled).

### Console Interface

You should print the board state out to the console like this each time it changes:

```
 X |   | O  
--- --- ---
 X | O | X
--- --- ---
   | X | O
```

Let the player choose their move by input a number [1-9] like on a telephone pad:

```
 1 | 2 | 3  
--- --- ---
 4 | 5 | 6
--- --- ---
 7 | 8 | 9
```


## Adventure Mode

  Allow a single player to choose to play against the computer's "AI".
  Your AI might just make random moves at this point, or take a stab at making
  a smarter AI

## Epic Mode

  Your AI is unbeatable. The player will always lose or at best, tie. Yes, this is totally possible. Your game should also recognize a tie as soon as it becomes impossible to win.
