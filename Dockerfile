# based image
FROM node:16

# where you run all your commands
WORKDIR /app

COPY package.json .

RUN npm install

COPY . ./

EXPOSE 3000

CMD [ "node", "index.js" ]