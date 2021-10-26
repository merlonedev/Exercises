module.exports = (req, res) => {
  const {name} = req.body;
  res.status(200).send({message: `Hello, ${name}`});
};