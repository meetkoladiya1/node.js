// OS Module

const os = require('os');

// console.log(os.arch());
// console.log(os.hostname());
// console.log(os.homedir());
// console.log(os.networkInterfaces());
// console.log(os.tmpdir());
// console.log(os.freemem());
// console.log(os.totalmem());
// console.log(os.userInfo());
// console.log(os.cpus());


const hello = require('./add');
const {mul,add} = require('./add');

console.log(hello.mul(11,5));
console.log(add(11,5));
