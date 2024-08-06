// db.users.find({})
// db.users.find({"movies.Floop":"Sui-dhaga"}) 
db.users.findOne({"gender" : "Female"})


// DATA UPDATE
//SYNTEXT:- db.users.updateOne({filter} , {update data} , {upsert:true})
// db.users.updateMany()

db.users.updateOne(
    {gender : 'Female'},
    {$set:{age:25 , email: "jolly@test.in"}},
    {upsert:true}
)

db.users.updateMany(
    {gender: 'Female'},
    {$set:{
        passion: "Make-up"
    }},
    {upsert: true}
)

//DELETE DATA
//SYNTEXT:-  db.users.deleteOne({filter})

db.users.deleteOne({_id:objectId('668d397bb5b7d023becc8988')})


db.users.deleteMany({gender : 'Female'})

db.users.drop()
// show collections
db.dropDatabse()










// db.user.find()
// db.user.find({"movies.floop":'sui-dhaga'})
// db.user.findOne({gender:"female"})


//  data update
// db.uder.updateOne({filter},{update date} , {upsert:true})

// db.user.updateMany()

// db.user.updateOne({gender:"female"},
// {$set:{age:22, email:'jolly@text.in'}},
// {upsert:true})

// db.user.updateMany({gender:'female'},
// {$set:{
//     passion:'make-up',
//     hobbies:'shoping'
// }}, 
// {upsert:true}
// )


// db.user.deleteOne({filter})
// db.user.deleteOne({_id:ObjectId("668d584f94c3a02d26e8e3e8")})

// db.user.deleteMany({gender:"female"})

// db.user.drop()
// show coll
// db.dropdatabase()