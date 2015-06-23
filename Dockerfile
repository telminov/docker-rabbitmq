FROM ubuntu:14.04
MAINTAINER telminov@soft-way.biz

EXPOSE 5672
EXPOSE 15672

# database directory
VOLUME /var/lib/rabbitmq/

# install package
RUN apt-get -qq update
RUN apt-get install rabbitmq-server -y

# Enable rabbit web plugin
RUN rabbitmq-plugins enable rabbitmq_management


CMD chown -R rabbitmq:rabbitmq /var/lib/rabbitmq; rabbitmq-server