# Init with one image of node.js 10 (LTS)
FROM node:10

# Specify the directory of image with all commands will be execute
WORKDIR /usr/src/app

# Copy the files of the package and install the dependencies
COPY package*.json ./
RUN npm install

# Copy all files of application for image
COPY . .

#The default command be executed in the init of container
CMD ["npm", "start"]