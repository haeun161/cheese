FROM node:18.16.0
RUN apt-get update && apt-get -y install build-essential && mkdir –p /app
COPY . /app/
WORKDIR /app/
RUN npm install
COPY . /app/
EXPOSE 5000
CMD [ "node", "main.js" ] 