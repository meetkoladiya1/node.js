const http = require('http');
const fs = require('fs')
 
// Create a server object
const server1 = http.createServer()
const server2 = http.createServer()
const server3 = http.createServer()
const server4 = http.createServer()
const server5 = http.createServer()


server1.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1121')
     res.end('<h2>Thank you for connecting 1121 port....</h2>')
}).listen(1121 , () =>{
    console.log(`Server Start at http://localhost:1121`);
})

server2.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1122')
    res.end('<h2>Thank you for connecting 1122 port....</h2>')
}).listen(1122 , () =>{
    console.log(`Server Start at http://localhost:1122`);
})

server3.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1123')
    res.end('<h2>Thank you for connecting 1123 port....</h2>')
}).listen(1123 , () =>{
    console.log(`Server Start at http://localhost:1123`);
})

server4.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1124')
    res.end('<h2>Thank you for connecting 1124 port....</h2>')
}).listen(1124 , () =>{
    console.log(`Server Start at http://localhost:1124`);
})

server5.on("request",(req, res)=>{
    res.setHeader("Content-type" , "text/html")
    res.write('welcome to port 1125')
    res.end('<h2>Thank you for connecting 1125 port....</h2>')
}).listen(1125 , () =>{
    console.log(`Server Start at http://localhost:1125`);
})


fs.open('task.js' ,(err , result) => {
    if(err)
        console.log(err);
    else
        console.log('File open successfully......');
})