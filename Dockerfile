From node:15
WORKDIR /app .
COPY package.json .
RUN apt install
EXPOSE 8080
CMD["npm","start"]

