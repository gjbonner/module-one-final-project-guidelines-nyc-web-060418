TASKMASTER
Our app is designed to be a repository for chores within a household; specifically between roommates so that all parties involved can create, read, update and delete their chores. Through CLI, a user can navigate a list of options and interact with a database to alter the contents of their chore table.
PREREQUISITES
source "https://rubygems.org"
gem "sinatra-activerecord"
gem "sqlite3"
gem "pry"
gem "require_all"
gem 'rake'
INSTALLATION
Once installed, run the below to bundle the above gems
'bundle install'
then run the below to create tables
'rake db:migrate'
run the below to seed instances
'rake db:seed'
DEPLOYMENT
To begin program,
'ruby bin/run.rb'
BUILT WITH
SQLite3
VERSION 0.1
AUTHORS
Giles Bonner
Matt Maher
ACKNOWLEDGEMENTS
Jimmy Buffet's Island Attitude
