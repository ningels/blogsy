# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    ruby -v 2.3.3p222 (2016-11-21 revision 56859) [x86_64-darwin16]

* System dependencies

* Configuration

* Database creation
    Command line prompts to create the tables
              Use --force option if issue and recreating
       rails generate model User "user_name" "email" "bio":text  
              or
                rails generate model User  user_name:string email:string bio:text

       rails generate model Post "title" "body":text user:references summary:text
       rails generate model Comment "body":text user:references post:references
       rails g migration AddCommentsCountToPosts
       rails g migration AddCommentsCountToUsers

* Database initialization
       rails DB:create - initial creation of database with postgrsql
       rails DB:migrate
       rails DB:reset if you need to drop the tables and recreate

* How to run the test suite
    From within the /blogsy directory:
              rake test

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Most prolific users (user with most posts):
 #--------------------------------
 select user_id, user_name, count(user_id)
     from users join posts
     on users.id = user_id
     group by user_id, user_name
      ;

      user_id |    user_name     | count
     ---------+------------------+-------
            3 | Gandalf the Grey |     2
            5 | Denethor         |     6
            4 | Grìma Wormtongue |     9
            2 | Boromir          |     7
            1 | Bilbo Baggins    |    10  -- Bilbo blogged the most
