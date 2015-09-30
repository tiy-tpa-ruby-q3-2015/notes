- Scaffolding pros/cons
  - Styling is terrible, HTML is not modern.
    - Could this be on purpose? ;)
  - Lets add a field to our bookstore app
  - Lets add another resource to our bookstore app (authors)
    - author name age preferred_genre
      - rails generate scaffold author name age:integer preferred_genre
      - rails generate migration CreateAuthor name age:integer preferred_genre
    - remove author_name from books
      - rails generate migration RemoveAuthorNameFromBooks author_name:books
- More about views
  - Where is the <html>, and <body> and ...
  - Layouts
  - content_for / yield

Resources:
 - http://guides.rubyonrails.org/form_helpers.html


Step-by-step for in class code (to follow along with the repo)
- commit [3c9594c0d93cbec48daa4e2960399a0fb55aae99](https://github.com/tiy-tpa-ruby-q3-2015/notes/commit/3c9594c0d93cbec48daa4e2960399a0fb55aae99)
  -  `rails generate migration AddPageCountToBooks page_count:integer`
- commit [2c6ececd7e018db3896f5f543de4f47dc1a47cd5](https://github.com/tiy-tpa-ruby-q3-2015/notes/commit/2c6ececd7e018db3896f5f543de4f47dc1a47cd5)
  - `rails generate model author name:string age:integer preferred_genre`
- commit [c1f0b4e72b76221df5075c9c55c1df8508a65523](https://github.com/tiy-tpa-ruby-q3-2015/notes/commit/c1f0b4e72b76221df5075c9c55c1df8508a65523)
  - `rails generate migration RemoveAuthorNameFromBooks author_name:string`
- commit [efd8aba1d3834c4eef4667c24bff21950bddee23](https://github.com/tiy-tpa-ruby-q3-2015/notes/commit/efd8aba1d3834c4eef4667c24bff21950bddee23)
  - `rails generate migration AddAuthorIdToBooks author_id:integer`
- commit [1cae7fbed098788669cac96ef9696266c4665ffa](https://github.com/tiy-tpa-ruby-q3-2015/notes/commit/1cae7fbed098788669cac96ef9696266c4665ffa)
  - `bundle install`
  - Stop and restart `rails server`

