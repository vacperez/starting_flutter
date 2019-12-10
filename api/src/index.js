const express = require("express");
const bodyParser = require("body-parser");
//import { getProperties } from 'model';
//const qr = require('./db/db');
const app = express();
const { getProperties } = require("./model");

//json
app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true
  })
);

//Settigs
app.set("port", 3000);

//Routes
app.get("/", (req, res) => {
  res.json("WEB SERVER YO ARRIENDO!!");
});
app.get("/properties", async (req, res) => {
  const properties = await getProperties();
  res.status(200).json(properties);
});

//Listen on Server
app.listen(app.get("port"), () => {
  console.log("Server Work!");
});
