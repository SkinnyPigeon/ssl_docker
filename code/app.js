require('dotenv').config()
const express = require('express')
const app = express()
const port = 80

app.get(`/.well-known/acme-challenge/${process.env.CHALLENGE_ADDRESS}`, (req, res) => {
  res.send(`${process.env.CHALLENGE_TOKEN}`)
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})