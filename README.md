CruxShare
=========

CruxShare is an extension for Spree Commerce. It is mandatory that Spree has to be installed in the system
to add this extension. CruxShare enables user to share product url with friends in Social network like 
Facebook and twitter.

Installation
===========
It is mandatory that Spree has to be installed prior to the inclusion of the Extension.

Start by adding the gem to your existing Rails 3.x application's Gemfile

gem 'crux_share', :git => 'git@github.com:railsfactory/crux_share.git'

Now bundle up with:

bundle install

Next, run the rake task that copies the necessary migrations and assets to your project:

rake spree_core:install

rake crux:install

rake crux_share:install

Now you should be able to boot up your server with:

rails s  

Usage
=========

Click facebook icon to enable share of the individual product page with friends and contacts.




