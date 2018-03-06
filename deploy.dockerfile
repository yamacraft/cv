FROM node:6.11-slim

RUN apt-get update
RUN npm install -g firebase-tools

RUN mkdir app
WORKDIR app

ARG FIREBASE_TOKEN="x/xxxxxxxxxxxx"

CMD firebase deploy --only hosting --token ${FIREBASE_TOKEN}