FROM ruby:2.7.2-alpine3.12

RUN apk update && apk add bash build-base nodejs postgresql-dev tzdata yarn

RUN mkdir /project
WORKDIR /project
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]