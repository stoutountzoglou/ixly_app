# README

This is an POC app, doing just around the basics on user story #456.

In order to run this project you need to have a basic Ruby on Rails setup in your pc.
The following steps are needed:

* Install ruby version 2.5.1
* Install bundler with 'gem install bundler'
* You'll need some packages: 'sudo apt-get install ruby-dev zlib1g-dev liblzma-dev'
* Now you should be ready to install rails: 'gem install rails 6.1.3.2'

nodejs is also needed, here are some steps in case you don't have it installed:
* 'sudo apt install nodejs'
* Install npm: 'apt install npm'
* 'npm install -g n'
* 'n 10.17.0' (you need at least version 10.17.0 to install webpacker)

Install yarn, in case you haven't:
* npm install --global yarn

Continue here if you had node and yarn already:
* Install webpacker: 'rails webpacker:install'
* cd to the folder where you downloaded the project
* run migrations: 'rails db:migrate'
* type 'bin/rails server' to run the server
* visit http://127.0.0.1:3000/candidates
* you can navigate accordingly to CRUD tasks and candidates.
