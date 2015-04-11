# Built using Docker 1.5.0
#
# To Build:
#   sudo docker build --force-rm=true -t visualjeff/ember-cli-light:0.2.3 .
# To Run:
#   sudo docker run -d -p 80:4200 -t visualjeff/ember-cli-light:0.2.3
# 

FROM alpine:edge 
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk update
RUN apk add --update bash wget git iojs && rm -rf /var/cache/apk/*
RUN apk update
RUN apk upgrade
RUN npm install -g ember-cli bower phantomjs
RUN npm cache clean && bower cache clean --allow-root
EXPOSE 4200 35729
CMD ["bash"]
