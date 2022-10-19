# syntax = docker/dockerfile:1.4

FROM ruby:3.1.2-slim

ENV APP_ROOT /api

RUN <<eot bash
  apt-get update
  apt-get install -y build-essential
  mkdir -p $APP_ROOT
eot

WORKDIR $APP_ROOT

COPY ./api/Gemfile $APP_ROOT

RUN <<eot bash
  gem install --no-document bundler
  bundle install
  rm -vf /usr/local/bundle/cache/*.gem
  find /usr/local/bundle/ -name "*.c" -delete
  find /usr/local/bundle/ -name "*.o" -delete
eot

COPY ./api/script $APP_ROOT
