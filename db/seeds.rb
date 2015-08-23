# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bryan = Employee.create()

francisco = Employee.create({
  nickname: "franny",
  given_name: "francisco",
  family_name: "salazar",
  email: "f@s.com",
  phone: "",
  picture: "",
  admin: false,
  archived: false
  })
tiff = Employee.create({
  nickname: "tiff",
  given_name: "lauren",
  family_name: "jones",
  email: "l@j.com",
  phone: "415-911-3333",
  picture: "",
  admin: false,
  archived: false
  })


Dispersement.create(
  employee: bob,
  # pool_employee_position: 1,
  amount: 50,
  status: "paid"
  )
Dispersement.create(
  employee: tom,
  # pool_employee_position: 2,
  amount: 100,
  status: "paid"
  )
