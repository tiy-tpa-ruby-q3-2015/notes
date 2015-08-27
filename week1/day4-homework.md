#Roshambo

Every Thursday, Jason, Gavin, and Toni go for lunch. In order to determine who pays, a bout of Roshambo (aka rock-paper-scissors) is played. The problem is, programmers are lazy. Jason and Gavin can't possibly be bothered to throw their hands manually. We need you to automate this for us.

See a Roshambo match played: [![RPS FOR THE AGES!](http://img.youtube.com/vi/_eanWnL3FtM/default.jpg)](http://www.youtube.com/watch?v=_eanWnL3FtM)

Use _classes_, _hashes_, _arrays_, _strings_, etc. This assignment will likely use every bit of Ruby we have learned so far to build something greater than the sum of it's parts.

## Explorer Mode

- [ ] At the start of each _match_ prompt for the name of the player
  - [ ] If no name is given, the program should end
- [ ] Play against the computer
  - [ ] This means the computer has an "AI" that just throws _randomly_.
- [ ] Play one _match_ and show the winner.
  - [ ] Each throw is considered an _engagement._
  - [ ] The best two of three _engagements_ is a _bout._
  - [ ] The best two of three _bouts_ is a _match._

## Adventure mode

- [ ] Support playing multiple games (_matches_) of Roshambo.
  - [ ] After the match winner is shown:
    - [ ] Show a leaderboard.
    - [ ] Prompt the player to play again.

## Epic Mode

Choose one of:

- [ ] Implement a non-random AI for the computer player based on past throws based on these strategies for [advanced Roshambo AI](https://www.youtube.com/watch?v=rudzYPHuewc)

or

- [ ] Keep the leaderboard between sessions
  - [ ] When exiting the game, save the leaderboard to a file
    - [ ] Extra epic: use a file named `.roshambo` in the user's home directory (like our `.zshrc` config/data files)
  - [ ] When starting, if a leaderboard file exists, load it and use that.

## Resources

- Entertain yourself by [reading the rules](http://www.usarps.com/rules/).
- See an unbeatable [Roshambo robot](http://www.theguardian.com/technology/video/2012/jun/27/rock-paper-scissors-robot-video)
