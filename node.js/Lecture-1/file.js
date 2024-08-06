// File System Module

const fs = require('fs')    // comman Js
// import * as fs from "fs";  // ESM

// function add(a,b){
//     return a + b;
// }
// function mul(a,b){
//     return a * b;
// }


// file open, close, write, read, append, update, rename, delete  

// Open Method
// fs.open("./hello.txt", (err,result) => {
//     if(err)
//         console.log(err);
//     else 
//     console.log('File Open Success');
// })

// fs.openSync("./hello.c");
// console.log('File Opened Successfully');

//  Write Method 

// fs.writeFile('./hello.txt', `Hello, How are you???`, (err) => {
//     if(err)
//         console.log(err);
//     else
//     console.log('File Write Success');
// })

// let data = `
// #include<stdio.h>
// int main(){
//     printf("SkillQode");
//     return 0;
// }
// `

// fs.writeFileSync('./hello.c', data);
// console.log('File Write Successfully');


// Read Method 

// // let aa = fs.readFileSync('./hello.c' ,'utf-16le')
// // let aa = fs.readFileSync('./hello.c' ,'ucs-2')
// let aa = fs.readFileSync('./hello.c' ,'utf-8')
// console.log(aa);


// fs.readFile('./hello.txt' , 'Utf8' , (err , data) =>{
//     if(err)
//         console.log(err);
//     else
//     console.log(data);
// })


// Append Method

// fs.appendFileSync('./hello.txt' , data)
// console.log('append success');

// let data =  hello this is append and this is a second method async
//  fs.appendFile('./hello.txt',data,(err) =>{
//     if(err)
//         console.log(err);
//     else
//     console.log('sucess');
// })

// Rename Method
// fs.renameSync('./hello.c' ,'./skill.c');
// console.log('append is worked');


// fs.rename('./hello.txt' ,'./qode.txt',(err) =>{
//     if(err)
//         console.log(err);

//     else
//     console.log('successfully');
// })

// Delete 

// fs.unlinkSync('./hello.c');
// console.log('deleterd......');


// fs.unlink('./hello.txt',(err) =>{
//     if(err)
//         console.log(err);
//     else
//      console.log('success');
// })

// ============  async and sync  how to worked............

// function add(a,b){
//     return a+b;

// }
// function mul(a,b){

//     return a* b;
// }

// Async
//  let t1 = performance.now();
//  console.log('stating---------->',t1);
//  console.log('addition ----------->>>>>>>', add(10,20));
//  fs.readFile('./qode.txt' , 'Utf8' , (err , data) =>{
//     if(err)
//         console.log(err);
//     else
//     console.log(data);
// })
// let t2 = performance.now();
// console.log('end time ----------->' ,t2);
// console.log('total time ----------->' ,t2-t1);

// Sync

let t1 = performance.now();
 console.log('stating---------->',t1);
 console.log('addition ----------->>>>>>>', add(10,20));
let aa = fs.readFileSync('./qode.txt' ,'utf-8')
console.log(aa);
console.log('multi->>>>>>>>' ,mul(10,50));
let t2 = performance.now();
console.log('end time ----------->' ,t2);
console.log('total time ----------->' ,t2-t1);