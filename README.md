# itunes-top-lists

Description
-------------
This is a simple API solution which retrieves the top apps from the US itunes store in a JSON format in three categories, viz., Top paid apps, Top free apps, Top grossing apps.

Installation
------------

Install ruby version 2.2.2 using rvm .
```sh
rvm install ruby-2.2.2
```
Use ruby verion 2.2.2 with a new gemset
```sh
rvm use ruby-2.2.2@itunes-top-lists --create
```
Install rails.
```sh
gem install rails
```
Install bundle.
```sh
bundle install
```
Now the setup is complete.

Start server
------------
```sh
rvm use ruby-2.2.2@itunes-top-lists
bundle exec rails s
```
You can now go to http://localhost:3000/api/v1/ping to check if everything is fine.

Unit Testing
------------

```sh
bundle exec rspec
```

Usage
--------------
To get the top apps of the genre, weather (has genre id 6001) use the following curl request
```sh
curl 'http://localhost:3000/api/v1/itunes/genres/6001/top_list'
```

To get the top apps of the same genre but for the device iPad, pass the parameter 'device' into the request. By default it always returns iphone apps.
```sh
curl 'http://localhost:3000/api/v1/itunes/genres/6001/top_list?device=ipad'
```