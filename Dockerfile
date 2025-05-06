FROM node:alpine

WORKDIR '/opt/webserver'

COPY package.json .
RUN npm set strict-ssl false && npm install
COPY . .

CMD ["npm", "start"]
