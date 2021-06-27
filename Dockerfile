FROM node:14

# create root application folder
WORKDIR /app

# install app dependencies
COPY package*.json ./
COPY tsconfig.json ./
# copy source code to /app/src folder
COPY src /app/src

# check file list
RUN ls -a

RUN yarn install
RUN yarn run build

EXPOSE 3000

CMD [ "node", "./dist/app.js" ]