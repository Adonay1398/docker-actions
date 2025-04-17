#use a base image
FROM node:18-alpine

#Set working directory
WORKDIR /app

#copy files
COPY package*.json ./
RUN npm install

COPY . .

#expose and run

EXPOSE 3000
CMD ["npm", "start"]
