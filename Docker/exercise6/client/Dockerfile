FROM node
WORKDIR /react-app
COPY /package.json/ .
RUN npm install
COPY . .
EXPOSE 3000
CMD npm start

# docker build -t dinesh/node_ex .
#  docker container run -d -p 3001:3000 dinesh/node_ex 