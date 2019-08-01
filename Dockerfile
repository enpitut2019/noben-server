FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ARG app_env
ENV APP_ENV ${app_env:-production}
ENV RAILS_ENV $APP_ENV

ENV APP_HOME /usr/local/docker_test
WORKDIR $APP_HOME

RUN bundle install
COPY . $APP_HOME
