FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install --legacy-peer-deps --ignore-scripts
RUN node scripts/patch-anchor.js || true
CMD ["npm", "start"]
