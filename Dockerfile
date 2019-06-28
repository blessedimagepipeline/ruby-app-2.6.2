FROM blimpacr.azurecr.io/ruby:dev-2.6.2
LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

COPY app /home/site/wwwroot

RUN bundle install \
 && exec bundle exec rails server -b 0.0.0.0 -e "$RAILS_ENV" -p "$PORT"

