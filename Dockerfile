FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Copy package.json file
COPY package*.json ./

# Install npm packages
RUN npm install

# Copy all files
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]