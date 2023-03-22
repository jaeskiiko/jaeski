const express = require('express');
const app = express();
const PORT = process.env.PORT || 4000;
const db = require('./config/db.js')

let user_on;

app.get('/',(req,res)=>{
    console.log('/root')
})

app.get('/user_on',(req,res)=>{
    console.log('/user_on')
    db.query("select * from user_on",(err,data) => {
        if(!err){
            console.log(data)
            
            res.send(data)  // 프론트로 데이터 전달
        }
        else {
            console.log(err)
        }
    })
})

app.get('/resto',(req,res)=>{
    console.log('/resto')
    db.query("select * from resto",(err,data) => {
        if(!err){
            console.log(data)
            
            res.send(data)  // 프론트로 데이터 전달
        }
        else {
            console.log(err)
        }
    })
})

app.listen(PORT,()=>{
    console.log(`Server On : http://localhost:${PORT}`)
})