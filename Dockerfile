FROM ruby:3.1.1

RUN apt-get update && apt-get install -y \
    postgresql-client \
    yarn \
    nodejs

WORKDIR /app
# COPY . /app/
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# ENV BUNDLE_PATH /gems
# RUN yarn install
# RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]

