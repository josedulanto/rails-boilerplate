Rails Boilerplate
===
Basically I got tired of doing the same steps over and over again to bring a Rails project to life and that's why a Rails 4 Boilerplate like this was the way to go. The features included here suits my needs and I hope they suit yours too. This has a lot of room for improvement so feel free to ask me or better yet fork it, improve it and PR it ;)

Includes:
---
* [Rails 4](http://rubyonrails.org/): Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.
* [PostgreSQL](http://www.postgresql.org/): PostgreSQL is a powerful, open source object-relational database system.
* [Redis](http://redis.io/) (to handle sessions and cache): Redis is an open source (BSD licensed), in-memory data structure store, used as database, cache and message broker.
* Testing with [RSpec](http://rspec.info/), [Capybara](https://github.com/jnicklas/capybara), [Factory Girl](https://github.com/thoughtbot/factory_girl), [Faker](https://github.com/stympy/faker) and [Poltergeist](https://github.com/teampoltergeist/poltergeist).
* [Devise](https://github.com/plataformatec/devise): Flexible authentication solution for Rails with Warden. All views styled with Semantic-UI.
* [Omniauth](https://github.com/intridea/omniauth): OmniAuth is a flexible authentication system utilizing Rack middleware. Devise integration with providers like [Facebook](https://github.com/mkdynamic/omniauth-facebook), [Twitter](https://github.com/arunagw/omniauth-twitter), [Google+](https://github.com/zquestz/omniauth-google-oauth2), [LinkedIn](https://github.com/decioferreira/omniauth-linkedin-oauth2), [GitHub](https://github.com/intridea/omniauth-github) and [Instagram](https://github.com/ropiku/omniauth-instagram).
* [Semantic-UI](http://www.semantic-ui.com/) (I had enough of Twitter Bootstrap): Semantic is a UI component framework based around useful principles from natural language.
* [Bower](https://github.com/rharriso/bower-rails/) (to manage assets): Bundler-like DSL + rake tasks for Bower on Rails.
* [Guard](https://github.com/guard/guard): Guard is a command line tool to easily handle events on file system modifications. Included with extensions for [Spring](https://github.com/guard/guard-spring), [CoffeeScript](https://github.com/guard/guard-coffeescript), [SASS](https://github.com/guard/guard-sass), [LiveReload](https://github.com/guard/guard-livereload), [RSpec](https://github.com/guard/guard-rspec) and [Pow](https://github.com/guard/guard-pow).
* [Figaro](https://github.com/laserlemon/figaro): Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file.
* [Rack mini profiler](https://github.com/MiniProfiler/rack-mini-profiler): Profiler for your development and production Ruby rack apps.
* [Pry](http://pryrepl.org/): An IRB alternative and runtime developer console.
* [Quiet Assets](https://github.com/evrone/quiet_assets): Mutes assets pipeline log messages.
* [Better Errors](https://github.com/charliesome/better_errors): Better error page for Rack apps.
* [Simple Form](https://github.com/plataformatec/simple_form): Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup. I included some wrapper for Semantic-UI inputs.
* [Letter Opener Web](https://github.com/fgrehm/letter_opener_web): A web interface for browsing Ruby on Rails sent emails. If you are in developer environment and you "send" an email, you can check how it looks or if it was "delivered" by visiting `http://<your-local-domain>/letter_opener`

My setup:
---
You could skip this section but I wanted to show you some of the tools I use in my projects that could be useful for you too.
* [Pow](http://pow.cx/): Pow is a zero-config Rack server for Mac OS X. Have it serving your apps locally in under a minute. If you are on a Mac I recommend [Anvil](http://anvilformac.com/) which handles sites with pow very well, you could also do `brew install pow` in console.
* [Redis Desktop Manager](http://redisdesktop.com/): Cross-platform open source Redis DB management tool.
* [Postgres.app](http://postgresapp.com/): If you are on a Mac and don't have PostgreSQL, the easiest way to get started is through this app.
* [RVM](https://rvm.io/): A command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.
* [LiveReload](http://livereload.com/): Monitors changes in the file system. As soon as you save a file, it is preprocessed as needed, and the browser is refreshed. If you use the Chrome browser then install the [LiveReload extension](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en).

Instructions:
---
* **Clone**: Clone this project to your machine.
```
git clone https://github.com/josedulanto/rails-boilerplate && cd rails-boilerplate
```
* **Ruby Gemset and Ruby Version**: Feel free to change the contents of the files `.ruby-version` which states the version of ruby to use (this boilerplate uses `ruby-2.2.3`) and `.ruby-gemset` which states the RVM gemset to use (this boilerplate uses `rails_bolerplate`, but you can use whatever name you want for your gemset). You could run `rvm current` to know which ruby version and gemset is being used.
* **Gems**: Fetch gems running bundler with:
```
bundle install
```
* **Configuration**: Rename the file `config/application.yml.example` to `config/application.yml` and change the values there.
```
# Change the values according to your setup.
APP_NAME: 'Rails Boilerplate'
APP_DOMAIN: 'rails-boilerplate.dev'
REDIS_SERVER_URL: 'redis://localhost:6379/0/cache'
```
* **Database**: Rename the file `config/database.yml.example` to `config/database.yml` then configure it and run:
```
bundle exec rake db:setup
```
* **Bower**: Fetch assets (Semtantic-UI) with Bower to your `vendor/assets/bower_components` folder with:
```
bundle exec rake bower:install
```
To fix assets paths within Bower packages so they work with the Rails Assets Pipeline run:
```
bundle exec rake bower:resolve
```
* **Server**: If you have [Anvil](http://anvilformac.com/) or [Pow](http://pow.cx/) then create the server and navigate to `http://rails-boilerplate.dev/` (or whatever domain you configured) or run:
```
bundle exec rails s
```
And navigate to `http://localhost:3000/`
* **LiveReload**: In another console/terminal run Guard with `bundle exec guard` and if you installed the LiveReload Chrome extension then hit the `Enable LiveReload` button (you should have it in your toolbar next to the URL bar).

ToDo:
---
* Authorization capabilities.
* Server automation.
* Some admin panel.
* Your suggestion here.

### Be happy and feel free to fork it, do a PR or suggest any improvements.