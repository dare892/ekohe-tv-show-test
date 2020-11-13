# FRONTEND INTERVIEW PRACTICE - EKOHE

This is a simple test program to showcase implementation of frontend designs.

### Features:
* User can create account / log in
* Upon logging in, the dashboard hits a movies endpoint from tvmaze (http://api.tvmaze.com/search/)
* Mobile responsive pages

### To Run Locally, have Rails (6+) installed. After you clone the repo:

```
bundle install
bundle exec rake db:create db:migrate
rails s
```

### Dependencies
* Devise Gem (authentication)
* Bootstrap
* jQuery
* Net::HTTP

### Deployed at:
https://tv-show-test-ekohe.herokuapp.com/
