# Number Guessing Game

## Description


It is your first day at the latest Internet startup in the Valley, "nmbr."

![nmbr](http://i.imgur.com/Ngc1Olv.png)

nmbr's mission statement is:
> Bring radical transformation to the number guessing space.

In fact, the CTO just said on CNN that you are the _Uber of number guesses_. So now it is crunch mode, as nmbr's new guessing game will ship **tomorrow**!

Your task is to create a number guessing game in which the computer picks a number and users have to guess it. The computer will give you cues like 'Too High' or 'Too Low.'

## Deliverables

- [ ] A GitHub repository named `nmbr`
- [ ] A Ruby file in that repository called `guessing_game.rb`.
- [ ] A series of commits on that repository.
- [ ] When you close the assignment issue include a link to your new repository.

  > After you get each requirement working, run `git add .`, then `git commit -m "TEXT HERE"`, where TEXT HERE should be replaced with the description of the requirement you just finished.

  > Make sure to `git push` your changes up to GitHub.  Feel free to do this more than once along the way, of course.


## Normal Mode

Your program should:
- [ ] Pick a **random** number between 1 and 100
- [ ] Prompt you for a guess
- [ ] If your guess is less than the program's number, it should tell you that you were low and let you guess again.
- [ ] If the guess is greater than the program's number, it should tell you that you were high and let you guess again.
- [ ] If your guess is correct, the program should tell you that you win and then quit.
- [ ] After 5 incorrect guesses, the program should tell you that you lose.
- [ ] Your code should use at least two methods.
- [ ] This game should be run from the command line by typing "ruby guessing_game.rb".

## Adventure Mode

To secure the next round of funding, nmbr's CEO is asking for this feature:
- [ ] If you guess the same number twice, the program should ask you if you're feeling all right (or something similarly sarcastic).

## Hard Mode

You've just found out that the mobile version of nmbr is being groomed for a spot on the App Store home page. nmbr's product manager needs to add these features before the app can be approved:
- [ ] Implement everything in a `class` named `Game` -- The only code in your ruby class not inside the class will be: Game.new.play
- [ ] Try having the random number to be guessed assigned in the `initializer`
- [ ] The program should also comment on your behavior if you make a guess that doesn't help you. For example, you might say "50" and then be told "that's too low." If you then guess "25," you're just wasting a guess.

## Nightmare Mode

You've done it! Funded, home page of the App Store, everthing is awesome. The CEO asks for a meeting to let you know that Gooooooooooogle is considering buying nmbr. You will be handsomely rewarded if you can only finish these features:
- [ ] Ask the user if they want to guess as in previous modes, *OR* if they want the computer to guess _their_ number
- [ ] Rename your existing class to `HumanGame` and create a new class called `ComputerGame` for the computer to guess
- [ ] Depending on the user's input above, use one class or the other to _play_
- [ ] If the user is guessing, all the Normal + Hard mode logic applies
- [ ] If the computer is guessing
 - [ ] The computer will make a guess
 - [ ] The user answers if the computer's guess is too high, too low, or correct after each guess.
 - [ ] The computer gets five guesses. The computer should tell you if you are lying to it.  (e.g. Computer guesses 50, you say "High."  Computer then guesses 49 and you say "Low."  You'd be lying, as there are no numbers between them.)

## Mathematical Mode

nbmr's CFO wants to know how _extensible_ the app really is so you'll need to do the following:
- [ ] Add a comment to this issue saying how many guesses the computer needs to guess a number up to one billion.
- [ ] Justify, in your own words, your answer

## Additional Resources

If you do Nightmare Mode, you might want to:
* [Watch this video](https://www.youtube.com/watch?v=JQhciTuD3E8) about binary search
* [Read this article](http://en.wikipedia.org/wiki/Binary_search_algorithm) about binary search
