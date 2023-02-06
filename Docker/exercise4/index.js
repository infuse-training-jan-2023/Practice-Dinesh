const axios = require('axios');

const url = process.env.URL || 'https://jsonplaceholder.typicode.com/todos/1'

axios.get(url)
  .then(response => {
        console.log(response.data)
    })
