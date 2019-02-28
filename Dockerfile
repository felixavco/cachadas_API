FROM node:10 as API

LABEL authors="Felix Avelar"

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

ENV \
  MONGO_URI = "" \
  SECRET_OR_KEY = "" \
  GOOGLE_CLIENT_ID = "" \
  GOOGLE_CLIENT_SECRET = "" \
  SENDGRID_KEY = "" \
  SMTP_USER = "" \
  SMTP_PWD = "" \
  SMTP_SERVER = ""

EXPOSE 5000

CMD [ "npm", "start" ]





