# IronTopics

Your lab this weekend is to create a system for us to collect, vote, sort, and select topics to cover during the last weeks of class and during the final project weeks.

This will allow us to ensure we recap past topics that you'd like to have more coverage of and to bring up new topics you'd like to hear about that we haven't covered.

# Explorer Mode

- [ ] Create a new Rails app
- [ ] Use devise and github omniauth for authorization
- [ ] You must login to the app to see *anything* at all
- [ ] Users should be able to create a new topic
  - [ ] Topics should have a title
  - [ ] Topics should have a long description
  - [ ] Topics should have a "focus area"
- [ ] The main landing page should show all the topics and a way for users to add a new topic
- [ ] Users should *not* be able to delete a topic
- [ ] When showing a topic, a user should be able to register their interest in the topic.
- [ ] When adding interest, record *who* was interested.
- [ ] When adding interest, the user should be able to include a comment
- [ ] When adding interest, the user should be able to rate their interest from 1 (mildly interested) to 5 (super excited)
- [ ] When showing a topic, show all the interests in the topic, including who was interested, what their comment was, and what the rating was.
- [ ] Deploy to heroku

# Adventure Mode

- [ ] Users should *not* be able to _edit_ their topic once there is a single interest recorded against this topic. (Otherwise the original user could swap out the topic description to something those users wouldn't be interested in)
- [ ] Topic descriptions should be interpreted as markdown and displayed properly using a markdown formatting gem (hint hint)
- [ ] Comments on interest in a topic should also be markdown

# Epic Mode
- [ ] When someone registers interest on a topic, send an email to the user who created the topic notifying them about the interest.
- [ ] The main list of topics should be sorted in order by the count of registered interest in the topic
- [ ] Even better, have the topics sorted by the _sum_ of the ranking of each interest for the topic.
- [ ] Think of features that might be great for this app, come discuss them with me, then lets add them!
- [ ] Make the app look awesome!
