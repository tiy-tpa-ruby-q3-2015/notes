
# Rails Dictionary Ajaxify!

Lets give our Rails Dictionary a more fluid user experience!

# Explorer Mode

- [ ] Modify the search feature of your Rails Dictionary to perform an _ajax_ search after each change
- [ ] The results of the search should dynamically *replace* the existing display of words/definitions on the page

# Adventure Mode

- [ ] Querying after each change of the search field is too much. Implement *debounce* logic to only search every-so-often. (NOTE: You will need to google search how to implement a *debounce*)
- [ ] Add an image (spinning wheel, etc.) to the page to show that *something* is happening while the search is underway. It should only be visible while the search request is active.
- [ ] If your app is very fast, the image will only be present for a very brief time. Can you find a way to only show the image if the search takes long? (where _long_ is maybe 200ms or more)

# Epic Mode

- [ ] Move the new word form to the main page
- [ ] When submitting a new word, use ajax to append (or prepend) the newly defined word to the list without a page reload.
