const mongoose = require('mongoose');
mongoose.Promise = global.Promise;

mongoose.set('debug', true);
mongoose.connect('mongodb://localhost:32769/ratings-app', {
    useNewUrlParser: true,
    useCreateIndex: true,
}, (err) => {
    if (!err) {
        console.log('MongoDB Connection Succeeded.')
    } else {
        console.log('Error in DB connection: ' + err)
    }
});

module.exports.Ratings = require('./ratings.model');
