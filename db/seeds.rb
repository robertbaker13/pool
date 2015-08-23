# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.create({
  nickname: "bob",
  given_name: "robert",
  family_name: "roberts",
  email: "bob@bob.com",
  phone: "415-911-2222",
  picture: "https://www.google.com/images"
  })
Employee.create({
  nickname: "tom",
  given_name: "thomas",
  family_name: "thompson",
  email: "tom@thompson.com",
  phone: "415-911-3333",
  picture: "https://en.wikipedia.org"
  })
Dispersement.create(
  employee: 1,
  pool_employee_position: 1,
  amount: 50,
  status: "paid"
  )
Dispersement.create(
  employee: 2,
  pool_employee_position: 2,
  amount: 100,
  status: "paid"
  )
