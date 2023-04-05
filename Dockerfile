# Use an official Node.js runtime as a parent image
FROM node:16.3.0-alpine

# Set the working directory to /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm install --silent

RUN npm install react-scripts@5.0.1 -g --silent

COPY . ./

# Run `npm start` when the container launches
CMD ["npm", "start"]