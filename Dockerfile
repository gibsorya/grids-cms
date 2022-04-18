FROM ruby:3.1.1

RUN apt-get update && apt-get install -y \
    postgresql-client \
    yarn \
    nodejs

WORKDIR /grids-cms
COPY Gemfile /grids-cms/Gemfile
COPY Gemfile.lock /grids-cms/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]

