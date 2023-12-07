
FROM node:18.12.1
RUN apt-get update && apt-get -y install build-essential && mkdir –p /app
COPY package*.json /app
WORKDIR /app
RUN npm install
COPY main.js /app
COPY . /app
EXPOSE 5000
CMD [ "node", "main.js" ] 