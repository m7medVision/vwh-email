FROM node:20-alpine

ARG SECRET
ENV SECRET=${SECRET}

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --force

COPY . .

RUN npm run build

EXPOSE 9169

CMD ["npm", "run", "start"]