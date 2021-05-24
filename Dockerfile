#Specifiy the ase image
FROM node:alpine

WORKDIR /usr/app1
# Install some dependencies
#Copying to current working directory
COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]
