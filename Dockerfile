From node:15
WORKDIR /app .
COPY . .
RUN apt install
EXPOSE 8080
CMD["npm","start"]

