FROM node:16
WORKDIR /app
COPY package.json .
RUN npm install -r package.json
COPY . .
EXPOSE 3000
CMD ["npm", "start"]