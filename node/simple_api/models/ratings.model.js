// user.model.js
const mongoose = require('mongoose');
// Declare the Schema of the Mongo model

var ratingsSchema = new mongoose.Schema({
    movie:{
        type:String,
        required:true,
        index:true,
    },
    starring:{
        type:String,
        required:true,
    },
    rated:{
        type:Boolean,
        default: false,
    },
    rating:{
        type:Int,
        required:true,
    },

});
// Export the model
module.exports = mongoose.model('Ratings', ratingsSchema);