# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Patient.create(
  [
    {
      full_name: 'Иванов Иван Иванович',
      email: 'ivan@me.com',
      phone_number: '+79999999999',
      birth_date: '2003-05-10'
    },
    {
      full_name: 'Петров Петр Петрович',
      email: 'petr@me.com',
      phone_number: '+78888888888',
      birth_date: '2003-08-12'
    },
    {
      full_name: 'Сидоров Сидор Сидорович',
      email: 'sidor@me.com',
      phone_number: '+77777777777',
      birth_date: '2003-05-10'
    },
    {
      full_name: 'Смирнов Смирнов Смирнович',
      email: 'smirnov@me.com',
      phone_number: '+79999999999',
      birth_date: '2003-05-10'
    }
  ]
)
