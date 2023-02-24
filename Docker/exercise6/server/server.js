const express = require ('express');
// const moment = require('moment/moment');
const app = express();
const port = 4000

app.get('/',(req,res) =>{
    res.send("Hello World ....")
})

app.listen(port, ()=> {
    console.log(`server at' ${port}`)
})

