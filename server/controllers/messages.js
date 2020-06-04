var models = require('../models');

module.exports = {
  get: function (req, res) {
    // use getAll function
    models.messages.getAll((error, result) => {
      if (error) {
        //do something
        res.statusCode(400);
        res.end(error);
      } else {
        //do something
        res.statusCode(200);
        res.end('this is a message');
      }
    });
  }, // a function which handles a get request for all messages

  // we want to pass the data from Model.messages.getAll to user per GET request

  // TODO

  post: function (req, res) {

    models.messages.create( req.json, (error, result) => {
      if (error) {
        //do something
        res.statusCode(400);
        res.end(error);
      } else {
        //do something
        res.statusCode(200);
        /// ??? res.end ( cb() ) ????
        // res.send(??? send cd with result to client)
        res.end(result);
      }
    });



  // a function which handles posting a message to the database
  }
}