FROM google/nodejs:0.10.33
MAINTAINER Drew Wells <drew.wells00@gmail.com>

RUN mkdir -p /opt/sinopia/storage
WORKDIR /opt/sinopia
RUN npm install js-yaml knksmith57/sinopia#fix-scoped-packages
RUN npm cache clear

ADD /start.sh /opt/sinopia/start.sh

CMD ["/opt/sinopia/start.sh"]

EXPOSE 4873
VOLUME /opt/sinopia
