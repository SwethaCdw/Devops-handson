FROM node:18

WORKDIR /assignment-5

COPY package*.json /dist

Run npm ci --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "dist/index.js"]