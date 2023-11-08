FROM ruby:2.7.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
ENV APP_ROOT /todo_app
RUN mkdir /todo_app
WORKDIR /todo_app
ADD Gemfile /todo_app/Gemfile
ADD Gemfile.lock /todo_app/Gemfile.lock
RUN bundle install
ADD . /todo_app
