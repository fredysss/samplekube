FROM node:18-alpine3.15
  
WORKDIR /app


# install deps
COPY package.json /app


RUN npm install
RUN apk --no-cache add curl
# Setup workdir
COPY . /app


# run
EXPOSE 3000

CMD ["node", "app.js"]