FROM node:22-alpine
WORKDIR /message-chat

COPY package.json tsconfig.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]