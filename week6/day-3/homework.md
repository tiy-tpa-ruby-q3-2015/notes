# Rails dictionary revisited

Tonight's homework is to extend the rails dictionary from last night's homework

# Explorer Mode

- [ ] Continue editing your rails dictionary repo from last night
- [ ] Add a field to indicate the type of word, e.g. `verb`, `noun`, `adjective`, `adverb`, etc.
- [ ] Add a field to store an example of the word in use
- [ ] If your app doesn't already have a search feature, add one.
  - [ ] Make the search a partial search of the word.
  - [ ] Decide if you are going to reuse the `index` action or if you are going to create your own action. Be prepared to discuss your choice between the two.
- [ ] Commit your work before moving on to other modes below
- [ ] If you didn't spruce up the dictionary from last night, add bootstrap to your app.
  - [ ] Add a navigation bar
  - [ ] Style the tables
  - [ ] Style the forms

# Adventure Mode

- [ ] Make the search be a partial seach of the word _or_ definition (if your dictionary supports multiple definitions you can skip this step if you can't figure this out)
- [ ] Create a logo for your app and place the logo in the navigation bar

# Epic Mode

- [ ] Allow words to have *multiple* examples of usage. NOTE: Explorer mode had you make the example directly on the definition, here you must undo that work to make them distinct and multiple.
  - [ ] Show all the examples on the *show* page for the word
  - [ ] On the index page for words show how many examples each word has
  - [ ] The edit form for a word should have a link to a separate page where the user can _add an example_ for this word.
  - [ ] _examples_ should be a separate resource with it's own controller and views
