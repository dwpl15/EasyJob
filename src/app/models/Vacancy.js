const Base = require("./Base")

Base.init({ table: 'vacancies' })

const Vacancy = {
    ...Base
}

module.exports = Vacancy