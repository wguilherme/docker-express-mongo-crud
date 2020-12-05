FROM node:11-alpine

WORKDIR /node-app

COPY package.json .

RUN yarn install --quiet

RUN yarn global add nodemon -g --quiet

COPY . . 

EXPOSE 9000

CMD nodemon -L --watch . index.js