# Rails 6 UsersData Example
It is an example app and a basic template for devise auth in rails 6 with omni github auth.

## Build with
- Ruby on Rails
- Bootstrap with Webpack
- Github OAuth

## Get Started
### Requirements
- Ruby 2.6
- Rails 6
- Foreman gem

### Clone
```bash
git clone git@github.com:ashok-kumar-miryala/User-Information.git
cd users_data
```
### Install and migrate db

```bash
bundle install
yarn install --check-files
rails db:migrate
```
### Start Server
To start rails server
```bash
rails server

```
To start webpack server (rails 6 default is to use webpack)
```bash
gem install foreman
foreman start -f Procfile.dev
```


## Screenshots

