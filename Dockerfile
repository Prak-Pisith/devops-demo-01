# based image
FROM node:16

# where you run all your commands
WORKDIR /app

COPY package.json .

RUN npm install

COPY . ./

ENV PORT 3000

EXPOSE ${PORT}

CMD [ "npm", "run", "dev" ]