const express = require ('express');
const moment = require('moment/moment');
const app = express();
const port = process.env.PORT || 3000

let time = moment().format("DD MMMM YYYY")

app.get('/',(req,res) =>{
    res.send(time)
})


app.listen(port, ()=> {
    console.log(`server at' ${port}`)
})

