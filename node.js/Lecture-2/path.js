// Path Module

const path = require('path')
const base = path.basename('C:\\temp\\myfile.html');
const dir = path.dirname('/foo/bar/baz/asdf/quux');
const ext = path.extname('index.html');

console.log(base);
console.log(dir);
console.log(ext);