## Dictionary Search

### Description

Your homework tonight is two parts.

#### Part A

Complete the search functionality for the application we built in class today.
Jason has already implemented the search action in the web app and deployed it to the "cloud".

We need to write the code for `/search` that will look for a query parameter named `q`. The code should search for all matches and reply with only the matching entries via a JSON response _identical_ to the format of the main word list:

```json
[
    {
        "definition": "Awesome",
        "word": "Ruby"
    },
    {
        "definition": "Internet Mascot",
        "word": "Cat"
    },
    {
        "definition": "Instructor",
        "word": "Gavin"
    }
]
```

You can find the web app Jason wrote at: http://tiy-tpa-ruby-q3-2015.github.io/web-dict-static/

This app will use your local ruby app for it's functionality.

#### Part B

As part of your experience at the The Iron Yard, it's important to start establishing a presence on the web that will extend beyond just the portfolio of code you are writing.

The second part of your assignment today is to create a blog (if you don't have one already) and write a blog post about your experiences at The Iron Yard so far. The Iron Yard likes to share these writings from student occasionally, you can [read some examples](http://blog.theironyard.com/category/stories/).

If you don't already have a Blog, I recommend using https://medium.com/. You can also look at services like Tumbler or Blogspot.

You might also like to publish the assignement from a few weeks ago, where you wrote about the history of the web.

### Objectives

* Understand AJAX and JSON responses
* Understand working with JSON data

### Deliverables

- [ ] a link to your fork of the original repo.

## Explorer Mode

- [ ] Fork [the project I started today](https://github.com/tiy-tpa-ruby-q3-2015/web-dictionary-ruby) in class to your own repo (Click the 'Fork' button on the top right of the repo page, it will create a copy of the repo under your account, which you can then clone to your computer with `git clone PUT_THE_CLONE_URL_HERE`). NOTE: You will not have to `git init` or `git remote add` this time.
- [ ] Implement the search feature!

Once you've cloned the app, `cd` into it and run:

    ruby web_dictionary.rb

Once you've completed the assignment, you can commit the changes to your own fork and push them to Github with the standard `git add`, `git commit` and `git push` commands.

## Adventure Mode

- [ ] Try saving the file in a different format so we don't have to split on " = " -- Consider keeping the list in an array, but store hashes instead, then consider YAML or JSON for storing the data to the file. Both YAML and JSON have ways to dump data to, and load back from, a file.
