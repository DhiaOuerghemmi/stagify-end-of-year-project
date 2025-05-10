# ✏️ TODO: pin to a specific Node.js LTS image version
FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production

COPY . .
EXPOSE 3000
CMD ["npm", "start"]
