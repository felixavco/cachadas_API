FROM node:10 as cachadas_API
LABEL authors="Felix Avelar"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD [ "npm", "start" ]



