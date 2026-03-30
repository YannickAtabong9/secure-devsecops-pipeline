FROM node:18-alpine

WORKDIR /app

COPY app/package*.json ./
RUN npm install --only=production

COPY app/ .

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 3000
CMD ["node", "server.js"]
