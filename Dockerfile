# base image
FROM node:20-alpine

# working directory
WORKDIR /app

# copy the package.json file
COPY package.json .

# install the dependencies
RUN npm install

# copy the files
COPY . .

# run the application
CMD ["npm", "start"]