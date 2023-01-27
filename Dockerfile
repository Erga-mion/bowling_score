FROM ruby:3.2.0

ENV APP /app
RUN mkdir $APP
WORKDIR $APP

COPY Gemfile Gemfile.lock $APP/
RUN bundle install

COPY . $APP/
