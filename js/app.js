'use strict';

let express = require('express');
let app = express();

app.get("/", (req, resp) => {

  resp.send('Hello world');
});

app.listen(8080, () => {
  console.log('Server running on localhost:8080');
});
