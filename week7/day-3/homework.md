
# Devise + Omniauth all the things!

Things were going great with our dictionary apps until our database administrator accidentally left a backup of the database on a thumbdrive labeled "Top Secret" -- now all of the plain text passwords for our users are exposed to the web!

Fortunately our CEO, after paying for every user to get free credit monitoring, has authorized us to upgrade our security!

Time to break out the `Devise` gem along with `Omniauth`

You may choose to add devise + omniauth to your existing dictionary app *OR* create a new rails app to keep track of something other than words and meanings.

# Dictionary Explorer mode
- [ ] Change out our poor implementation of authentication for devise
- [ ] Add in omniauth with at least *one* provider (I suggest github)
- [ ] Deploy your application to Heroku and provide the link to your heroku app for me to login to with Github. Make sure this works with your own github account before turning it in.
- [ ] Add the Heroku link and your github repo link when closing the homework issue

# Dictionary Adventure mode
- [ ] Add a second omniauth provider (Facebook? Twitter?)
- [ ] Make your login/signup pages more exciting with bootstrap.
- [ ] Customize the bootstrap pages. Perhaps change the width of the forms, or the styling of the lables (or placeholders), add some background images or logos.
- [ ] Add font-awesome to make the "Login with Github" (etc) links have the appropriate logo

# Dictionary Epic mode
- [ ] Integrate a free email provider to your Heroku app (mailgun for instance) so the "forgot password" emails work.

# New Rails App Explorer mode
- [ ] Create a new rails app for something other than a dictionary
- [ ] Have at least one thing you are going to keep track of (llamas, cars, Iron Yard Students, etc.)
- [ ] This model should have at least four columns/attributes
- [ ] Ensure you add the same CSS/styling love you gave the dictionary
- [ ] Complete the same Explorer mode above

# New Rails App Adventure mode
- [ ] Complete the same Adventure mode above

# New Rails App Epic mode
- [ ] Complete the same Epic mode above
