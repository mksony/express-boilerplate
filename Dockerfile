FROM node:boron
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
COPY server.js /usr/src/app/
RUN npm install
# Bundle app source
COPY . /usr/src/app

EXPOSE 5000
EXPOSE 5858
CMD [ "npm", "start" ]