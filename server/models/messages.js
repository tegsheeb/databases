var db = require('../db');

module.exports = {
  getAll: function () {}, // a function which produces all the messages
  create: function () {
    // ???? before

    INSERT into messages (username, text_content, roomname) Values(${request.json.username}, ${request.json.text_content}, ${request.json.roomname})
  } // a function which can be used to insert a message into the database
};
