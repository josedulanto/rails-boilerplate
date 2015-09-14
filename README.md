Rails Boilerplate
===
Basically I was tired of doing the same steps to bring a project to life and that's why I created a Rails 4 Boilerplate that fits my needs. I hope the features I included here suits your needs too. This has a lot of room for improvement so feel free to ask me or better yet fork it, improve it and PR it ;)

Includes:
---
* [Rails 4](http://rubyonrails.org/): Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.
* [PostgreSQL](http://www.postgresql.org/): PostgreSQL is a powerful, open source object-relational database system.
* [Redis](http://redis.io/) (to handle sessions and cache): Redis is an open source (BSD licensed), in-memory data structure store, used as database, cache and message broker.
* Testing with [RSpec](http://rspec.info/), [Capybara](https://github.com/jnicklas/capybara), [Factory Girl](https://github.com/thoughtbot/factory_girl), [Faker](https://github.com/stympy/faker) and [Poltergeist](https://github.com/teampoltergeist/poltergeist).
* [Semantic-UI](http://www.semantic-ui.com/) (I had enough of Twitter Bootstrap): Semantic is a UI component framework based around useful principles from natural language.
* [Bower](https://github.com/rharriso/bower-rails/) (to manage assets): Bundler-like DSL + rake tasks for Bower on Rails.
* [Guard](https://github.com/guard/guard): Guard is a command line tool to easily handle events on file system modifications. Included with extensions for [Spring](https://github.com/guard/guard-spring), [CoffeeScript](https://github.com/guard/guard-coffeescript), [SASS](https://github.com/guard/guard-sass), [LiveReload](https://github.com/guard/guard-livereload), [RSpec](https://github.com/guard/guard-rspec) and [Pow](https://github.com/guard/guard-pow).
* [Figaro](https://github.com/laserlemon/figaro): Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file.
* [Rack mini profiler](https://github.com/MiniProfiler/rack-mini-profiler): Profiler for your development and production Ruby rack apps.
* [Pry](http://pryrepl.org/): An IRB alternative and runtime developer console.
* [Simple Form](https://github.com/plataformatec/simple_form): Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup.
* [Kaminari](https://github.com/amatsuda/kaminari): A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Rails 3 and 4.

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
* **Bundler**: Run bundler with `bundle install`
* **Settings**: Create the file `config/application.yml` and save it with the following:
```
# Change the values according to your setup.
REDIS_SERVER_URL: 'redis://localhost:6379/0/cache'
```
* **Database**: Configure your database settings in `config/database.yml` and then run:
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
* Devise with omniauth.
* Capistrano or similar for deployment.
* Some admin panel.
* Your suggestion here.

### Be happy and feel free to fork it, do a PR or suggest any improvements.