# Built using Docker 1.5.0
#
# To Build:
#   sudo docker build --force-rm=true -t visualjeff/ember-cli-light:0.2.3 .
# To Run:
#   sudo docker run -d -p 80:4200 -t visualjeff/ember-cli-light:0.2.3
# 

FROM alpine:3.1
RUN apk add --update bash wget git nodejs && rm -rf /var/cache/apk/*
RUN npm install -g ember-cli bower phantomjs
RUN npm cache clean && bower cache clean --allow-root
EXPOSE 4200
CMD ["bash"]
