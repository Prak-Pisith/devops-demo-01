# based image
FROM node:16

# where you run all your commands
WORKDIR /app

COPY package.json .

# Script for prevent dev dependencies install in production
ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY . ./

ENV PORT 3000

EXPOSE ${PORT}

CMD [ "node", "index.js" ]