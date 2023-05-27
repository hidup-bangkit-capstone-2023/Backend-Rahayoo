# Use the official Node.js 14.x base image

FROM node:16

WORKDIR /app

COPY package*.json .

RUN npm install
 
COPY . .

CMD ["npm", "start"]