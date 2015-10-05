
You've been hired at Webster's dictionary to help create a test suite for their new Rails based dictionary app that is live in production. They report that some features on the site break from time to time and they feel a good test suite will help them take on the folks over at Oxford English.

# Adventure Mode

- [ ] Add unit tests for each of your active record models
  - [ ] For each attribute that validates _presence_, add a test to ensure that a newly created model must have that attribute.
  - [ ] For any model that has a _uniqueness_ validation, write a test that tries to add a second model with the same value, see that it fails.
- [ ] Using the TDD _(test first)_ style, add a test for a method named `fancy?` that returns `true` if the word has more than 16 characters. Make sure that it also returns `false` for words that aren't _fancy_
  - [ ] Add the test for the new method *FIRST*
  - [ ] Confirm it fails
  - [ ] Resolve the message (typically method not defined)
  - [ ] Make the method pass

# Explorer Mode
- [ ] Add a controller test for your search feature.
  - [ ] Validate that the correct instance variables are assigned.
  - [ ] Add some sample data (fixtures _or_ factories -- see class notes) and validate that the instance variables have what you expect them to have populated
- [ ] If the search is implemented inside the controller, extract the implementation into a _class_ method on your model.
  - [ ] Add a _unit_ test for this newly created method.

# Epic Mode
- [ ] Add an integration test that validates the correct results are returned when performing a search. NOTE: You will probably need to create more than one definition in your database for this.
- [ ] Add an integration test that validates:
  - [ ] There is a link on the homepage to create a new word
  - [ ] Requesting that link shows a form
  - [ ] Submitting a request to the app with the appropriate data for creating a word puts that definition in the database
  - [ ] Once submitted you are redirected to the main page and that word is there

# Resources

- Today's class [notes and code](https://github.com/tiy-tpa-ruby-q3-2015/notes/tree/master/week7/day-1)
- Rails testing [guide](http://guides.rubyonrails.org/testing.html)
- Rails [dom testing](http://www.rubydoc.info/github/rails/rails-dom-testing/Rails/Dom/Testing/Assertions/SelectorAssertions#assert_select-instance_method)
- If you choose to use _factories_ instead of _fixtures_ give [factory_girl]( https://github.com/thoughtbot/factory_girl) a try.
