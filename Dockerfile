# TODO use the official node repo once it's upgraded to node 0.10.29 or later
#FROM node
FROM dockerfile/nodejs

MAINTAINER Christiaan Hees <mail@chees.info>

ENV MONGO_URL mongodb://mongo
ENV ROOT_URL http://example.com
# ENV MAIL_URL smtp://user:password@mailhost:port/
ENV PORT 3000

EXPOSE 3000

RUN mkdir /home/meteor && \
    groupadd -r meteor -g 433 && \
    useradd -u 431 -r -g meteor -d /home/meteor -s /sbin/nologin meteor && \
    chown -R meteor:meteor /home/meteor

USER meteor

ADD bundle /home/meteor/app
WORKDIR /home/meteor/app

CMD [ "node", "main.js" ]
