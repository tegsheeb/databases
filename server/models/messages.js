var db = require('../db');

module.exports = {
  getAll: function (callback) {
    console.log(message);

    var getSql = 'SELECT * from messages';

    db.index.connection.query(getSql, function (error, results) {
      if (error) {
        callback(error, null);
      } else {
        console.log(results);
        callback(null, results);
      }
    });


  }, // a function which produces all the messages
  create: function (message, callback) {
    // ???? before
    console.log(message);

    var postSql = `INSERT into messages (username, text_content, roomname) Values(${message.username}, ${message.message}, ${message.roomname})`;

    db.index.connection.query(postSql, function (error, results, fields) {
      if (error) {
        callback(error, null);
      } else {
        callback (null, result); //??
      }
    });
  }
  // a function which can be used to insert a message into the database
};
