FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8000
CMD ["node", "main.js", "--host", "0.0.0.0", "--port", "8000", "--cache", "./test"]
