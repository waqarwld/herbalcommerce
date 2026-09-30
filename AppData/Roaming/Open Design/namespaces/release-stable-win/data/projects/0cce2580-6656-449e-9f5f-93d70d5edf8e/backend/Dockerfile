FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY src ./src
COPY tsconfig.json ./
ENV NODE_ENV=production
ENV NODE_PATH=/app/src
EXPOSE 3000
RUN npm ci
RUN npm run build
CMD ["node", "dist/src/index.js"]
