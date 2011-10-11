CruxShare
=========

Share the product url in social network(facebook).

Installation
=========

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

Click facebook icon in individual product page




