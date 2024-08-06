const http = require('http');


const data = [
    {
        id:1, name: 'John' , age: 11
    },
    {
        id:2, name: 'John' , age: 12
    },
    {
        id:3, name: 'John' , age: 13
    },
    {
        id:4, name: 'John' , age: 14
    },
]

const server = http.createServer();


server.on("request", (req, res)=>{
    console.log(req.url);
    let items = req.url.splite("/");
    console.log(items);
  
    if(items[1] === "user"){
        res.setHeader("Content-Type", "text/html");
        res.write('<h2>Welcome to User Page</h2>');
        res.end();
    }
    else if(items[1] === "admin"){
        res.setHeader("Content-Type", "text/html");
        res.write('<h2>Welcome to Admin Page</h2>');
        res.end();
    }
    else if(items[1] === "friends"){
        res.setHeader("Content-Type", "application/json");
            if(items.length === 3){
                let friIndex = +items[2];
                res.write(JSON.stringify(data.filter(e=>e.id === friIndex)));
            }
            else
                res.write(JSON.stringify(data));
                res.end();
    }
    else {
        res.setHeader("Content-Type", "text/html");
        res.write('<h2 style= "color:red">Page Not Found....</h2>');
        res.end();
    }
})

server.listen(2221, ()=>{
    console.log(`Server start at http://localhost:2221`);
})