# ActiveRecord Powered Web Dictionary

Our web based dictionary is awesome and we've seen how to work with text files, and then YAML/JSON. Lets power our dictionary with the power of ActiveRecord!


# Explorer Mode
- [ ] If you haven't converted your web dictionary to use Sinatra, come see me and I will help you.
  - [ ] If you don't get your code converted to Sinatra, you can use your Webrick based one. However, it is time to put Webrick away and use the simpler, more powerful Sinatra.
- [ ] Read all of:
  - [ ] [ActiveRecord Guide](http://guides.rubyonrails.org/active_record_basics.html)
  - [ ] [Validations Guide](http://guides.rubyonrails.org/active_record_validations.html)
- [ ] Create a new repository
- [ ] Using `sqlite3` command create the following table:
  - `definitions` - columns: `id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL`, `word` and `meaning`
- [ ] Fill in a few (10?) definitions using `insert` statements
- [ ] Update your web code to have a `Definition` class based on ActiveRecord
- [ ] Reimplement the home page, add page and search page to utilize this new ActiveRecord class.
  - NOTE: Try not to write the search with `select`. See if there is an ActiveRecord way of doing it!

# Adventure Mode

- [ ] Add validation to the word and meaning and don't put the new word in the database if missing
- [ ] In case of a missing word or meaning, show an error page with a link back to the add page (rather then the existing behavior of redirecting to the home page)

# Epic Mode

- [ ] Figure out how to change the schema and the ActiveRecord classes to allow a word to have many meanings.
- [ ] Use the same existing forms, but when adding a word that already exists, create another meaning associated to this word.
- [ ] Update the homepage to show each word and all of it's meanings. Use a nice formatting.
