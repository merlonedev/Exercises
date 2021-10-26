const express = require('express');
const bodyParser = require('body-parser');
const hello = require('./controllers/hello');

const app = express();
app.use(bodyParser.json());


app.post('/hello', hello);

app.get('/ping', (req, res) => {
  res.status(200).send({message: 'pong'});
});

app.listen(3001, () => {
  console.log('Aplicação ouvindo na porta 3001');
});