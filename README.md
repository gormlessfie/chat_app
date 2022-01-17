chat_app

This is an application where users can log in and join the global chatroom.

There will only be one chatroom.

Once authenticated, the users can then send messages to the server which will then be broadcast to all members that has also joined the chatroom.
These messages will be relayed in real time.

Admin accounts will have a different layout than regular users.
Admins will have a dropdown for each user which has an button to ban user. (delete account)

Authentication will be done with the Devise gem.
Authorization will be done with the CanCanCan gem.
Styling and html design will be done with the Bulma gem.
Icons will be done with the Font Awesome gem.
Preview email within browser will be done with Letter Opener gem.


Website process:
------------------

Sign up Process
---------------
The website is entered by the user.

The user will see a login screen: username / password
The user will be prompted to sign up: username / password / email

The username must be between 3-12 characters in length, no special characters, no spaces.
The password must be between 6-24 characters in length, no spaces.
The email must be present lol.

The email is sent through Mailgun on Heroku.
When the user signs up, they will get an confirmation email with their username.
---------------

User log in process
-------------------

User logs in
When sign up completes, log in the user and redirect to chat room.


The chatroom will be a box in the center, users list on the right to display who is joined.
There will be a message box on the bottom where users can type messages that will be broadcast.


User log out process
--------------------

When user logs out, connection is stopped. They get redirected back to log in screen.
There will be a flash message displaying successful log out.




GOALS:

Create new rails app. X
Install required gems. (devise, CanCanCan, bulma) X

Configure devise.
  Create devise controllers X
  Create devise views X
  Create devise migration X
  Set up devise username migration column X
  Set up devise role migration column X
  
  Follow devise:install instructions X

  Update sessions login view to use username instead of email. X
  Update registration view to include username column. X
  Update registration view to include hidden role column, sets all registering users to 'chatter'. (Can set to admin in db) X

  Add username to whitelist parameter in devise configuration. X


  Enable confirmation email (low prio) 
     Enable confirmation email for local, preview using letter gem X
     Enable confirmation email for production using Heroku and Mailgun.


Create the chatbox.
Create the users list.

Setup Action Cable to use WebSockets.

Figure out what is needed to create a chatroom.




Configure CanCanCan After creating the chatroom.
  Learn how CanCanCan works.
  Users with role admin has special priviledges
  Users with role admin has a different layout than 'chatters'
  Users with role admin will be able to see a dropdown next to users which have a button to delete the user.


Provide a link for users when logged in to edit username, email, password, etc.
  Create link for that.


Configure bulma
  Add bulma to views
    Add bulma css to login 'sessions' X
    Add bulma css to registration X
    Add bulma to edit X



DO LATER, UNIMPORTANT
Add login method via twitter

