# syntax=docker/dockerfile:1
FROM ruby:2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /rubocop-setup
COPY Gemfile /rubocop-setup/Gemfile
COPY Gemfile.lock /rubocop-setup/Gemfile.lock
RUN bundle install

EXPOSE 3000
