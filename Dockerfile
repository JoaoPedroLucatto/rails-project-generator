FROM ruby:3.2.0

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn \
  postgresql-client

RUN gem install rails -v "~> 8.0.0"

WORKDIR /app

CMD ["irb"]
