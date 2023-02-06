FROM node
WORKDIR /src/
RUN npm install axios
ENV URL 'https://jsonplaceholder.typicode.com/todos/1'
COPY . . 
CMD node index.js