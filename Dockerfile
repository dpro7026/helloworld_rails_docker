FROM ruby:alpine

RUN apk add --no-cache build-base postgresql-dev nodejs tzdata
RUN gem install rails -v 5.2.1

WORKDIR /railsapp
ADD Gemfile Gemfile.lock /railsapp/
RUN bundle install
