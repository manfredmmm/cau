#AEiG Cardenal Lluch Website

###Setup
``gem install rails -v 3.2.18
``brew install postgresql
``brew install imagemagick
``bundle install
``gem install eventmachine -v '1.0.3' -- --with-cppflags=-I/usr/local/opt/openssl/include
``env ARCHFLAGS="-arch x86_64" gem install pg -v '0.15.0'

###postgres process
``postgres -D /usr/local/var/postgres

###DB setup
``rake db:create db:migrate db:seed
