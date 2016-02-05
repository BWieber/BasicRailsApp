<<<<<<< HEAD
## Bloccit: A Reddit Replica to Showcase the Fundamentals of Web Development and Ruby on Rails.

The live version can be found at (bwieber-bloccit.herokuapp.com).

The following fundamentals of Ruby on Rails were utilized in this project:

- Object relational mapping
- The importance of testing
- Seeding data
- The MVC architecture
- CRUD
- Validating data
- Creating users & signing them in and out
- Ajax
- Privacy options
- API basics (sending and retrieving data)

Made during my apprenticeship at Bloc
=======
https://travis-ci.org/BWieber/BasicRailsApp.svg?branch=master

# Bloccit

Bloccit is a Ruby on Rails application that allows users to create topics and posts. Users are able to up/down vote posts as well as favorite them. All aspects for this app were custom built, including authentication and authorization, in order to gain a thorough understanding of their functionality.

The app is deployed on Heroku: https://bwieber-bloccit.herokuapp.com
The source code is here on GitHub: https://github.com/BWieber/Bloccit
This app was created as part of the [Bloc](www.bloc.io) Full Stack Web Development course.

# Setup and Configuration

**Languages and Frameworks**: Ruby on Rails and Bootstrap

**Ruby version 2.0.0**

**Databases**: SQLite (Test, Development), PostgreSQL (Production)

**Development Tools and Gems include**:

+ BCrypt for secure passwords
+ SendGrid for email confirmation
+ FactoryGirl for test suite success

**Setup:**

+ Environment variables were set using Figaro and are stored in config/application.yml (ignored by git).

+ The config/application.example.yml file illustrates how environment variables should be stored.

**To run Bloccit locally:**

+ Clone the repository
+ Run bundle install
+ Create and migrate the SQLite database with `rake db:create` and `rake db:migrate`
+ Start the server using `rails server`
+ Run the app on `localhost:3000`

**Features**

+ Users can create a standard account in order to create and edit topics and posts.
+ Users can up/down vote any post. A list of their posts is displayed on their profile with their vote score.
+ Users can favorite posts, which are then saved on their user profile for easy tracking.
>>>>>>> topics_fix
