FROM node:18

WORKDIR .

COPY package*.json dist

Run npm ci --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "dist/index.js"]