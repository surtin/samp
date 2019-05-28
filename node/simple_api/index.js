const express = require('express'),
    app = express(),
    port = process.env.PORT || 3000,
    bodyParser = require('body-parser');

// Adding any necessary route imports here
const ratingsRoutes = require('./routes/index');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.get('/', (req, res) => {
    db.Rating.create({req,body})
    .then(function (newRating) {
        res.status(201).json(newRating)
    })
    .catch(function (err) {
        res.send(err);
    })
});



app.use('/api/ratings', ratingsRoutes);

app.listen(port, () => {
    console.log('Server started on ' + port + '!');
});

//Run app, then load http://localhost:3000 in a browser to see the output.