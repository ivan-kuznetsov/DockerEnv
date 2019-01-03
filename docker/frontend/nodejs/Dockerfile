FROM node:10.11-jessie

RUN npm install -g bower gulp-cli && \
echo '{ "allow_root": true }' > /root/.bowerrc

WORKDIR /var/www/