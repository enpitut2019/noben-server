FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ARG app_env
ENV APP_ENV ${app_env:-production}
ENV RAILS_ENV $APP_ENV

ENV APP_HOME /usr/local/noben
WORKDIR $APP_HOME


COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

COPY . $APP_HOME
