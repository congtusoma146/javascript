FROM node:13-alpine

COPY . .

# set default dir so that next commands executes in /home/app dir
WORKDIR /my-app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

