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
* [Slim](https://github.com/slim-template/slim): Slim templates generator for Rails 3 and 4. Slim is a template language whose goal is reduce the syntax to the essential parts without becoming cryptic.
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

Instructions
===

### Clone

Clone this project to your machine.

```
git clone https://github.com/josedulanto/rails-boilerplate && cd rails-boilerplate
```

### Ruby Gemset and Ruby Version

Feel free to change the contents of the files `.ruby-version` which states the version of ruby to use (this boilerplate uses `ruby-2.2.3`) and `.ruby-gemset` which states the RVM gemset to use (this boilerplate uses `rails_bolerplate`, but you can use whatever name you want for your gemset). You could run `rvm current` to know which ruby version and gemset is being used.

### Gems

Fetch gems running bundler with:

```
bundle install
```

### Configuration

Rename the file `config/application.yml.example` to `config/application.yml` and change the values there.

```
# I prefilled this for you, but change them according to your needs.
APP_NAME: 'Rails Boilerplate'
APP_DOMAIN: 'rails-boilerplate.dev'
DEVISE_MAILER_SENDER: 'rails.boilerplate@example.com'
REDIS_SERVER_URL: 'redis://localhost:6379/0/cache'
```

Run the command `bundle exec rake secret` in console/terminal to generate the different values for `SECRET_KEY_BASE` and `DEVISE_SECRET_KEY`

#### Omniauth providers

All omniauth providers are disabled by default, but you can enable them by uncommenting the lines at the bottom of the file `config/initializers/devise.rb`

```
# ==> UNCOMMENT THE LINES BELOW IF YOU WANT TO USE ANY OF THOSE AS OMNIAUTH PROVIDERS

# config.omniauth :twitter, ENV["TWITTER_APP_ID"], ENV["TWITTER_APP_SECRET"]
# config.omniauth :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_APP_SECRET"], scope: "email"
# config.omniauth :google_oauth2, ENV['GOOGLE_APP_ID'], ENV['GOOGLE_APP_SECRET'], scope: "email,profile,offline" #, prompt: "consent"
# config.omniauth :instagram, ENV['INSTAGRAM_APP_ID'], ENV['INSTAGRAM_APP_SECRET']
# config.omniauth :linkedin, ENV['LINKEDIN_APP_ID'], ENV['LINKEDIN_APP_SECRET'], scope: 'r_basicprofile r_emailaddress'
# config.omniauth :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET'], scope: 'user:email'
```

For those providers you choose to enable, you have to set their `<PROVIDER>_APP_ID` and `<PROVIDER>_APP_SECRET` within the `config/application.yml` file, please read it carefully.

### Database

Rename the file `config/database.yml.example` to `config/database.yml` then configure it and run:

```
bundle exec rake db:setup
```

### Bower

We use bower to manage the CSS and Javascript assets (jQuery and Semantic-UI), if you want to add more assets to the project modify the `Bowerfile` file using [Ruby DSL syntax](https://github.com/42dev/bower-rails#ruby-dsl-configuration). To fetch those assets with Bower to your `vendor/assets/bower_components` folder run the following command:

```
bundle exec rake bower:install
```

Now we need to tell the bower-rails gem to fix the paths within the fetched Bower packages so they work with the Rails Assets Pipeline.

```
bundle exec rake bower:resolve
```

### Server

If you have [Anvil](http://anvilformac.com/) or [Pow](http://pow.cx/) then create the server and navigate to `http://rails-boilerplate.dev/` (or whatever domain you configured) or run `bundle exec rails s` and navigate to `http://localhost:3000`

Welcome to your rails application.

### LiveReload

In another console/terminal run Guard with `bundle exec guard` and if you installed the LiveReload Chrome extension then hit the `Enable LiveReload` button (you should have it in your toolbar next to the URL bar).

DEPLOYMENT
===

Heroku
---
Why Heroku? Because of its simplicity and ease of use. If you want to use another cloud service be sure to config the environment variables in `config/application.yml` according to your setup.

### Add-ons

You should add the PostgreSQL, Redis and SendGrid add-ons to the rails-boilerplate application, all of them with FREE plans, so don't worry.

```
heroku addons:create heroku-postgresql:hobby-dev
```

```
heroku addons:create heroku-redis:hobby-dev
```

```
heroku addons:create sendgrid:starter
```

### Buildpacks (Ruby + Node)

You remember we were using Bower to handle the front-end area of our application, right? So, Heroku doesn't know that and we have to tell it that our application uses both Ruby and NodeJS features. To do that you have to add two Heroku buildpacks:

```
heroku buildpacks:set https://github.com/heroku/heroku-buildpack-ruby.git
```

```
heroku buildpacks:add --index 1 https://github.com/heroku/heroku-buildpack-nodejs.git
```

NOTE: To read more about please refer to [Deploying Rails + Bower on Heroku](https://medium.com/for-the-public-benefit/deploying-rails-bower-on-heroku-3b4ca4908a59) article by Ellie Day in Medium. More buildpacks can be found at the [Heroku elements](https://elements.heroku.com/) page.

Since we added environment variables to the file `config/application.yml` now we need to export those variables to Heroku using the following Figaro gem command:
```
figaro heroku:set -e production
```
You should be able to see the variables loaded in Heroku by executing the `heroku config` command.

Finally push everything to Heroku with `git push heroku master`

ToDo
===
* Authorization capabilities.
* Server automation.
* Some admin panel.
* Your suggestion here.

> Be happy and feel free to fork it, do a PR or suggest any improvements.