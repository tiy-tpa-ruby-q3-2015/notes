We have been learning some basic Rails applications. But Rails is also good for APIs. This lab we are diving back into the land of games (as are the FEE students)

I have created the skeleton of a Rails application that we will implement the API backend of a Minesweeper game.

The API document is located [here](https://minesweeper-api.herokuapp.com/)

Lucky for you I have created a suite of tests that will tell you when the API has been completed.

Getting Started
- Fork this [repository](https://github.com/tiy-tpa-ruby-q3-2015/minesweeper-api)
- Clone this repository
- bundle install
- Change the Gemfile 'ruby' line to match your ruby version
- execute: `createdb minesweeper-api_test`
- execute: `createdb minesweeper-api_development`
- execute: `rake db:migrate`
- execute: `rake test:db`

# Some extra information you will need

We will *NOT* be using views in this homework. Each controller action you write will end with a line that starts with `render json:    ` and something to complete the line.

We have seen that we can `render` a specific template by doing `render :index` etc. But `render` can also render `JSON` data by doing: `render json: SOMETHING_GOES_HERE` where `SOMETHING_GOES_HERE` can be an hash, or _maybe an instance of an object_ (hint, hint, hint, hint)

We can control the `JSON` that an object returns by defining a method `as_json` to return a hash of data that represents how that object is to be turned into JSON. Lucky for you I have implemented the object needed (and included the migration)

# Explorer Mode
- [ ] Run the tests for the repository by running: `rake test`
- [ ] One test at a time, remove the `skip` statements from `tests/integration/game_test` and make that test pass.
- [ ] Implement the `place_mines` method to fill the array of mine locations with the correct number of mines

# Adventure Mode
- [ ] See if you can write a client app for this game!
  - [ ] Choose between writing an HTML UI and a ruby console game. If you use the Ruby console you can use the built in 'net/http' library (which isn't great) or use something like [httpclient](https://rubygems.org/gems/httpclient)

# Epic Mode
- [ ] Once you have a UI, see if you can implement into the code the normal Minesweeper logic of a `sweeping` click. That is, a click on a free space expands out until it bumps into a space that is next to a bomb. You will need to know about `recursion` (for a good geekly laugh, try googling this and see what the _did you mean_ is)
