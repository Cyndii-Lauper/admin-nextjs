FROM node:20 AS builder
ENV NODE_ENV=production
LABEL author="minh"
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "dev"]

