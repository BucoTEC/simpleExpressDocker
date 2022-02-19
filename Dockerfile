FROM node:alpine

EXPOSE 3000

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm i npm@latest -g


RUN npm install --no-optional && npm cache clean --force

COPY . .

CMD ["node", "app.js"]
