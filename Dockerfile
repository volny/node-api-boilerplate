# WIP
FROM node:8.16.1-alpine
EXPOSE 3000 9229

WORKDIR /home/app

COPY package.json /home/app/
# COPY yarn.lock /home/app/

# RUN npm ci

COPY . /home/app

RUN npm run build

CMD ./scripts/start.sh
