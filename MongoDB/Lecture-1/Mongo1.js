// use db name 
//Create Collection
db.createCollection("users")

//Insert Document
db.users.insertOne({name:"Romil",age:25,email:"Romil@635.gamil.com"})

//Insert Multiple Document
db.users.insertMany([
    {name:"Meet",age:18},
    {name:"Romil",age:20,email:"romil@635.gamil.com",hobbies:"song"},
    {name:"om",age:21,email:"om@635.gamil.com"}]);

//Retirve data show
db.users.find()
//singale data
db.users.findOne({name:"meet"})
//many data
db.users.findmany({age:{$set:20}})
















// use dbname

// create collection

db.createCollection("user");

//  insert data(single)

db.user.insertOne({
  name: "john peter",
  age: 22,
  email: "john@text.in",
});

//  inset multiple data

db.user.insertMany([
  {
    name: "jolly peter",
    age: 21,
    gender: "female",
  },
  {
    name: "virat kohli",
    age: 34,
    email: "viru@gmail.com",
    hobbies: ["cricket", "music", "dancing"],
  },
  {
    name: "anushka shrma kohli",
    gender: "female",
    movies: {
      supar_duper: "pk",
      most_famous: "sultan",
      floop: "sui-dhaga",
    },
  },
]);

// -----------------------------------------

db.createCollection("client_master");

db.client_master.insertOne({
  name: "meet",
  address: "33/A",
  email: "meet@gmail.com",
});

db.client_master.insertMany([
  {
    name: "romil",
    age: 20,
    mobile: 8907654567,
    email: "romil@gmail.com",
    gender: "male",
  },

  { name: "annirudh", age: 23, city: "surat", address: "22/B" },

  { name: "om", skill: "cooking", age: 20 },
]);


db.client_master.find()