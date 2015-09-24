
## Iron News

One of the basic, foundational news portals for professional web developers is "Hacker News," which is kind of like a Reddit for the startup/design/development community with a very... minimalist design ethic.

This weekend's lab is to build our own Iron News!

# Objectives

- Bring together all we have recently learned
  - HTML/CSS
  - Forms
  - Web app in Sinatra
  - ActiveRecord + databases for storing data
  - Classes, blocks, enumerable
  - ERB (Or HAML)
  - JSON
- Practice building a full app!

# Explorer Mode

- [ ] Reimplement the home page of Hacker News but with The Iron Yard flare. Try to match the styling of the main home page with the story numbers, the upvote triangle, the name of the link (clickable). Don't worry yet about the points or comment count (see epic mode), but do show the story's owner's email instead of user name and show the timestamp instead of "X hours ago"
- [ ] NOTE: The number next to the story is *NOT* the database `id` column of the story, but represents the 1st story, 2nd story, 3rd story in the results.
- [ ] Use Sinatra to host our app. You may need to research how to get Sinatra to serve up CSS (and Javascript if you use any)
- [ ] Stories should be shown in the order of *most currently posted first*
- [ ] Use *migrations* to create a database structure to hold:
  - [ ] Stories which contain a title, a link to some page on the web, a timestamp when the story was posted, and the email address of the person who submitted it.
- [ ] Fill in some stories (bonus points if you use `db/seeds.rb`)
- [ ] Commit your code *and* a copy of your `sqlite` database file

# Adventure Mode Part One
- [ ] Implement a link for the "new" element in the nav header. This should allow the user to submit a new link along with their email address. When done redirect them to the homepage.
- [ ] Don't allow anyone to submit a story without a link or email address

# Adventure Mode Part Two
- [ ] Validate that the link is a proper web address (there is probably a ruby gem you can use for this)
- [ ] Validate that the email address of the poster is a valid email address (again, there might be a gem to help, or use one of those *HUUUUUGE* regular expressions)
- [ ] Format the timestamp as "X hours ago" or "Y days ago" or a similarly human friendly age (again their might be a gem to help with this, or for a challenge see if you can implement _yourself_ as a method on your `Story` object, it isn't as hard as you might think and is a great code challenge)

# Epic Mode

- [ ] Add a *"more"* link to show a single page of stories (25?) and implement *pagination*. Again there might be a gem to help with this -- but also see if you can implement it on your own. TIPS: the link will be a *get* request but you can add on a parameter of a page number, ActiveRecord has methods for dealing with offset and limits...  NOTE: If you paginate after 25 stories the first story number on the second page of results starts at 26, etc.
- [ ] Add a migration to implement `comments` for our site.
- [ ] Add a "X comments" link to each story that takes you to a page where the story is shown along with a linear list of comments (most recent comments first). The "X comments" on the homepage should show the current number of comments for each article.
- [ ] Allow someone to comment on the article, capturing the long form text of their comment and their email address. When submitted, redisplay the comment page.

# Over 9000 Mode
- [ ] Use jQuery and AJAX to add the comment to the comments page without doing a full page reload. We haven't talked about this yet so google and your fellow Front End students are your friends.

# Resources

- [Marked up sample of hacker news homepage](https://imgur.com/a/I8RyD)
- Don't forget about the `Rails Guides`
  - [ActiveRecord Guide](http://guides.rubyonrails.org/active_record_basics.html)
  - [Validations Guide](http://guides.rubyonrails.org/active_record_validations.html)
  - [Migrations](http://edgeguides.rubyonrails.org/active_record_migrations.html)
- Example on how to create migrations:
  - Rakefile from Week 5 - Day 4 notes
    - Change the "database" to something other than `store.sqlite3`, maybe `ironnews.sqlite3`
  - `gem install active_record_migrations`
  - Create a "db/migrate" folder in your project
  - `rake "db:new_migration[CreateStories, field1:format field2:format]"`
