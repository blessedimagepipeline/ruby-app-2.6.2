FROM blimpacr.azurecr.io/ruby:master-2.6.2
LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

COPY app /home/site/wwwroot

CMD bundle install && /bin/init_container.sh
