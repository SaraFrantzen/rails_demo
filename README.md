# Demo project to learn Ruby on Rails

This project aim to deepen knowledge about AUT (Acceptance Unit Test) cycle in Rails framework
Working in the outside-in direction meaning starting with views and working the way in toward the models.

Rspec is used for both acceptance and unit testing among with shoulda-matchers for unit testing and capybara for testing the views.
Using FactoryBots for setting up test objects
Adding Coveralls to the project and continious integration with Semaphore and finally continois deplyment with Heroku

## The Application
The application allows users to sign up to an account using email and password and then sign in. In the application they can read, create and edit articles. Only logged in users are allowed to create and edit articles.

### What is still in development
For now, the authentication is already required to access the application. I would like to develop the application so that any visitor can see the articles, but only logged in users have access to edit and write articles.
There is no sign out button 