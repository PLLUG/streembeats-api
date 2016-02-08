FROM ruby:2.2.3

RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /streembeats-api
WORKDIR /streambeats-api
ADD Gemfile* /streambeats-api/
RUN bundle install
ADD . /streambeats-api
