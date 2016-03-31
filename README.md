# tictaktoe

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

Ruby version 2.2.4

Rails version 4.2.6

Database: SQLight

* System dependencies

* Configuration

* Database creation
running ```
rake db:migrate
``` should be sufficient

* Database initialization

* How to run the test suite

* Deployment instructions
This is set up to run locally
```sh
$ bundle
$ rake db:migrate
$ rails s
```
[http://localhost:3000/matches](http://localhost:3000/matches)

TODO:

test coverage - ran into issues with setting up rspec. Opted to finish on time with manual testing instead of losing time fighting with a broken rspec setup.

improve validations

implement running score on landing page

clean up readme

