FROM node:18-alpine
RUN mkdir -p /var/app
WORKDIR /var/app
ADD . /app/
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/main.js"]
