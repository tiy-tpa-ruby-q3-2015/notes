
# Rails dictionary

Tonight's homework is to create a new rails app, your first rails app! The app will recreate the web dictionary. You do not need to style the dictionary the same way in Rails and it is fine if you wish to use the default `scaffold`, but try to add a bit of CSS (or SCSS) styling to the app, or change the `index.html.erb` to have a nicer style.

# Explorer Mode

- [ ] Create a new rails app
- [ ] Create a git repository to hold your rails app
- [ ] Commit the initial version of your rails app (e.g. just after using the `rails new` command)
- [ ] Commit and push to github after you finish each requirement and at the end of your work.
- [ ] Add a resource for a definition, including a `word` and `meaning`
- [ ] Update the model to enforce that the word and the meaning are present (e.g. we can't have blank words or blank meanings)
- [ ] If you use `scaffold`, update the styling to make a nicer presentation

# Explorer Mode Part Two

- [ ] Add a new post to your blog with your first impressions of Rails as a framework. How does this compare to the work we did in Webrick, Sinatra, etc.?

# Adventure Mode

- [ ] Learn how to set the default route to the main listing of definitions. This way when you go to `http://localhost:3000` you get a list of definitions and not the `Welcome to Rails` page.
- [ ] Change the index page to have a nice format showing the words and meanings. Retain the ability to create, show, edit, and delete definitions.
- [ ] Enforce uniqueness of `word` such that the same word cannot be defined twice

# Epic Mode

- [ ] Add a `search` feature to the main index page. There should be an input box for the search and when a corresponding submit button is pressed, only words that fuzzy match that input are shown on the page
- [ ] Add the `kaminari` gem to your project and implement `pagination` such that only 10 definitions are shown at a time on the index page.
- [ ] Make pagination work on the `search` results as well
