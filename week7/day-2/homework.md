
You did a great job on testing the Rails Dictionary for Webster's.

However the CEO noted that just about anyone on the internet can add a new word to the system. If you've spent any time on the internet you know what havoc this can bring.

Your task now is to add a simple authentication system to the Webster's dictionary app.

# Explorer Mode

- [ ] Create a users model with an `email` and `password` field
- [ ] Seed the following accounts:
       `gavin@example.com/sekret`
       `jason@example.com/alsosekret`
       `toni@example.com/supersekret`
- [ ] Using the session-as-a-resource style from today's lecture create the ability to login and logout of your dictionary app
- [ ] Make the login page styled as nicely as the rest of your app
- [ ] Make it so that you cannot access any of the dictionary features unless you are logged in
- [ ] Did this cause any of your tests to fail?
- [ ] Deploy your application to Heroku and see that the login works (remember you may need to `heroku run rake db:seed` to get the seed accounts required above to be loaded)

# Adventure Mode
- [ ] Fix any tests that started to fail due to authentication.
- [ ] Change the system so that you can see the list of definitions and search even if you are not logged in.
- [ ] Creating/deleting/showing a definition should still require a login

# Epic Mode
- [ ] Integrate [devise](http://devise.plataformatec.com.br/) into your app and throw away our custom (and not so great) authentication system.
- [ ] See how many features (sign up, password reminder, remember me, etc.) from devise's list of configurable behaviors you feel like integrating.
- [ ] Deploy this to Heroku and have some friends sign up and define some words!
