FROM blimpacr.azurecr.io/ruby:dev-2.6.2
LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

COPY app /home/site/wwwroot

RUN cd /homw/site/wwwroot \
 && bundle update

