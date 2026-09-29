FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY tsconfig.json ./
COPY src ./src
ENV NODE_ENV=production
EXPOSE 4000
CMD ["node", "dist/src/index.js"]
