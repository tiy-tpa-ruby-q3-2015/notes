# Speeling revisited

Storing our words and definitions in a text file isn't the most
efficient method. Tonight we will revise our Speeling assignment
to use a richer storage format.

## Explorer Mode

- [ ] Create a *new* repository and make a copy of your ruby code.
- [ ] Change the storage format from a text file to either JSON or YAML. I suggest using a file with the `.json` or `.yml` respectively.
- [ ] Change your embedded HTML strings to use ERB from strings.

## Adventure Mode

- [ ] Change from ERB in strings to storing the templates in a file.
- [ ] Put the templates either in the same directory as your ruby script, or even better inside a `templates` directory.
- [ ] Your files should have an extension of `.html.erb`

## Epic Mode

- [ ] Read about [Sinatra](http://www.sinatrarb.com/intro.html) and convert your application from using WEBrick to using Sinatra. We will cover this in detail tomorrow.
