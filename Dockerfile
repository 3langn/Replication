FROM node:17-alpine
WORKDIR /app
COPY package.json .

RUN  npm install;

COPY . ./
RUN chown -R node /app
USER node
CMD ["npm","run","dev"]
