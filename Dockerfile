FROM node:11.0.0

# ARG APP_PORT
# ENV NODE_ENV $app_env
# ENV NODEJS_IP "0.0.0.0"

RUN mkdir -p /app/server
WORKDIR /app/server
COPY . /app/server

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]