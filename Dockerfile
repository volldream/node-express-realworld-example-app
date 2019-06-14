FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Create access log directory
RUN mkdir /logs

# Copy package.json file
COPY package*.json ./

# Install npm packages
RUN npm install

# Copy all files
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]