# DocumentSearchEngine

A sample of Mroonga on Rails Engine for full-text search.

## Requirements

* MySQL
* [Groonga](http://groonga.org/)
* [Mroonga](http://mroonga.org/)
* Rails 4.2

## Usage

```sh
$ git clone https://github.com/myokoym/document_search_engine
$ rails new sample_project --database=mysql
$ cd sample_project
```

Edit Gemfile:

```ruby
gem "document_search_engine", path: "../document_search_engine"
```

Bundle:

```sh
$ bundle install
```

Edit config/route.rb:

```ruby
Rails.application.routes.draw do
  ...
  mount DocumentSearchEngine::Engine => "/search"
```

Copy migrations:

```sh
$ bin/rake document_search_engine:install:migrations
```

Migrate:

```sh
$ bin/rake db:migrate
```
