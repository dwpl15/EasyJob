const express = require("express")
const routes = express.Router()

const VacanciesController = require("../app/controllers/VacanciesController")

routes.get("/vacancies", VacanciesController.create)

module.exports = routes