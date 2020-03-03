# Functionality

This app allows the user to view list of available channels and TV shows telecasting lon that channel with telecast time.

User can mark any TV show as favourite and get notified 30 minutes prior to the telecat.

# Features :
 * user Login
 * user can search through list with with channel name or show time
 * user can mark a tv show as favourite
 * user can unmark a TV show from favourite list
 * user get notified 30 minutes prior to telecast.

# Gems Used
* Devise for Authentication
* Datatable for search
* Bootstrap for HTML
* whenever for scheduling the rake task evry 30 minutes
* seed_dump gem to dump DB data to seed

# Rails version 6.0.2.1
# ruby version ruby 2.6.3p62

# Added seed data to seed.rb file

* $ rake db:create
* $ rake db:migrate
* $ rake db:seed
* $ rails s

FYI the UI has to be improved to get nicer look.