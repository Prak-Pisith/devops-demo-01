const express = require('express');

const app = express();

const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('<h2>Welcome to our application</h2>');
})

app.listen(port, () => console.log(`listening on port ${port}`));