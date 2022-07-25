# get the base node image
FROM node:alpine as builder

#make a new dir 
RUN mkdir -p /home/application

# set the working dir for container
WORKDIR /home/application

# copy the json file first
COPY ./package.json /home/application

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

EXPOSE 5000

# build the folder
CMD [ "npm", "start" ]