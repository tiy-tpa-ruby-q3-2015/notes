## Speeling

You have noticed that your instructor is often a terrible speeler and has
trouble remembering the correct form of "initialize" in his Ruby code.

Your assignment for tonight is to make a web based dictionary powered by
Ruby and Webrick!

## Explorer Mode

Make a web server that handles three different URLs:

- [ ] `/` should show all the words in the current dictionary and a link to the URL for adding new words
- [ ] `/add` should show a form with a name of a word and POST this to a URL for saving words
- [ ] `/save` should save the newly added word to a database (either a local array or a text file. Bonus points for using a text file that is reloaded on each request of `/`)

## Adventure Mode

Add the ability to:
- [ ] Have a form on the `/` page that asks for a word to search for and POSTs to a search URL
- [ ] '/search' will search for the specified word and only show the matches (bonus points for doing substring matches) and include a link back to the homepage

## Epic Mode

- [ ] Find your local IP address (likely `ipconfig getifaddr en0` if you are on wifi -- or look in Network settings inside System Preferences)
- [ ] Have a friend on the same local network put that ipaddress (and port number!) into their browser and add some words to your dictionary!
