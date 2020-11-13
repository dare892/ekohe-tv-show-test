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
* postgresql

### Deployed at:
https://tv-show-test-ekohe.herokuapp.com/

### Additional Good-to-know Gotchas/Features
* Would have committed more frequently if I were to collaborate, but it was a simple app with just me workng on it so there's not much commit history.
* Added search functionality to load content dynamically.
* Spend ~2 hours total.
