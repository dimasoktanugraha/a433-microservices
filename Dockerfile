# pull image node version 14
FROM node:14-alpine

# create workdir
WORKDIR /app

# copy semua file ke directory app
COPY . /app

# create node environment
ENV NODE_ENV=production DB_HOST=item-db

# run perintah npm untuk install dependencies
RUN npm install --production --unsafe-perm && npm run build

# publish di port 8080
EXPOSE 8080

# run perintah npm start
CMD ["npm", "start"]