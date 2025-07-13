FROM node

WORKDIR /app

COPY /vite-project .

EXPOSE 3000

RUN npm install

CMD [ "npm", "run", "dev"]