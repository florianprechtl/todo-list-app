FROM docker.io/library/node:10-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy both package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
# RUN npm install
# For production use
RUN npm i --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
