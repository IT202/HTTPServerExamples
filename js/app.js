'use strict';

let express = require('express');
let app = express();

app.get("/", (req, resp) => {
  resp.send('hello world');
});

app.listen(4000, () => {
  console.log('Server running on localhost:4000');
});
