FROM ruby:2.6.4-slim

RUN mkdir /geminabox-data

COPY . /geminabox-app

WORKDIR /geminabox-app

RUN bundle install

EXPOSE 9292

ENTRYPOINT ["bundle", "exec", "rackup", "--host", "0.0.0.0"]