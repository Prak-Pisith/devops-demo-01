const express = require('express');

const app = express();

const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send(`
  <h1>Welcome to our application!!!!!</h1>
  <h2>Are you ready?</h2>
  <link>http://localhost:${port}</link>
  `);
})

app.listen(port, () => console.log(`listening on port ${port}`));