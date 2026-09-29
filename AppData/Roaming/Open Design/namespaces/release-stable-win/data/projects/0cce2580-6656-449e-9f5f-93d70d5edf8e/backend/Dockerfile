FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY src ./src
COPY tsconfig.json ./
RUN npm run build
ENV NODE_ENV=production
EXPOSE 4000
CMD ["node", "dist/src/index.js"]
