var express = require("express");
var router = express.Router();

const pool = require("../mysqlConnection");

/* GET users listing. */
router.get("/", (req, res, next) => {
  pool.query("SELECT * from users;", (err, results, fields) => {
    if (err) {
      console.error("user.js: sql execute error");
    } else {
      console.log("user.js: sql execute success");
    }
    pool.end();
    res.send(results);
  });
});

module.exports = router;
