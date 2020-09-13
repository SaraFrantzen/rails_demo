# Demo project to learn Ruby on Rails

This project aims to deepen knowledge about AUT (Acceptance Unit Test) cycle in Rails framework.
Working in the outside-in direction, meaning starting with views and working the way in toward the models.


Rspec is used for both acceptance and unit testing, among with shoulda-matchers for unit testing and capybara for testing the views.
Using FactoryBots for setting up test objects.
Adding Coveralls to the project and continious integration with Semaphore, and finally continious deplyment with Heroku.


## The Application
The application allows visitors to see a list of article titles, by clicking on them they can read a specific article. 
Users can login to write and thereafter also edit articles. Test are made to confirm that writing & editing articles require authentication.

### Acknowledgement
Thanks to Emiliano Mainero Armando who helped me find the information on Stack overflow to configure the articles controller to except index and show from authentication

#### What is still in development
There is no sign out button 
