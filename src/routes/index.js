const express = require('express')
const routes = express.Router()

const HomeController = require("../app/controllers/HomeController")

const vacancies = require("./vacancies")

routes.get("/", HomeController.index)

routes.use("/company", vacancies)

module.exports = routes