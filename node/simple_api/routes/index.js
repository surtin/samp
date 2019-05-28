const express = require("express");
const router = express.Router();
const db = require('../models');

// TODO: Actually utilize user authentication for API.
// * Will just keep things simple for now and only utilize and create simple API
/* var User = require('../models/user.model');

function collectData(req, res) {
    let user = new User();
    user.name = req.body.name.toString().trim();
    user.email = req.body.email.toString().toLowerCase().trim();
    user.password = req.body.password.toString().trim();
    user.mobile = req.body.mobile.toString();


} */

/*
    @route get api/
    @desc pull and display all ratings and movies in database
    @access public
*/
router.get('/', (req, res) => {
    db.Ratings.find()
    .then(function (ratings) {
        res.json(ratings);
    })
    .catch(function (err) {
        res.send(err);
    })
});

/*
    @route POST api/
    @desc to create new ratings
    @access public
*/
router.post("/", (req, res) => {
  db.Ratings.create(req, body)
  .then(function (newRating) {
      res.status(201).json(newRating);
  })
  .catch(function (err) {
      res.send(err);
  })
});

/*
    @route SHOW route api/
    @desc show route for good times to be had aka find things by id (solo)
    @access public
*/
router.get("/:ratingId", (req, res) => {
  db.Ratings.findById(req.params.ratingId)
  .then(function (foundRating) {
      res.json(foundRating)
  })
  .catch(function (err) {
      res.send(err);
  })
});

/*
    @route PUT request api/rating/:ratingId
    @desc for updating a specific rating
    @access public
*/
router.put('/:ratingId', (req, res) => {
    db.Ratings.findOneAndUpdate({_id:req.params.ratingId}, req.body, {new: true})
    .then(function (rating) {
        res.json(rating);
    })
    .catch(function (err) {
        res.send(err);
    })
});

/*
    @route DELETE route api/rating/:ratingId
    @desc deletes a rating from the api and database
    @access public
*/
router.delete("/:ratingId", (req, res) => {
  db.Ratings.remove({_id: req.params.ratingId})
  .then(function () {
      res.json({message: 'Rating deleted'})
  })
  .catch(function (err) {
      res.send(err);
  })
});


module.exports = router;