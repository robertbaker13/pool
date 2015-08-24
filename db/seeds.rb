# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bryan = Employee.create(
  nickname: "way duh",
  given_name: "bryan",
  family_name: "ueda",
  email: "b@u.com",
  phone: "",
  picture: "",
  admin: false,
  archived: false)

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
  employee: francisco,
  # pool_employee_position: 1,
  amount: 50,
  status: "paid"
  )
Dispersement.create(
  employee: francisco,
  # pool_employee_position: 1,
  amount: 55,
  status: "paid"
  )
Dispersement.create(
  employee: francisco,
  # pool_employee_position: 1,
  amount: 60,
  status: "paid"
  )
Dispersement.create(
  employee: francisco,
  # pool_employee_position: 1,
  amount: 50,
  status: "paid"
  )
Dispersement.create(
  employee: tiff,
  # pool_employee_position: 2,
  amount: 100,
  status: "paid"
  )


evens = ScheduleType.create(name: "Evens Stevens", archived: false)
weighted = ScheduleType.create(name: "Weighted by Points", archived: false)

server = Position.create(title: "Server", permission: "user", archived: false)
bartender = Position.create(title: "Bartender", permission: "user", archived: false)
barback = Position.create(title: "Barback", permission: "user", archived: false)
host = Position.create(title: "Host", permission: "user", archived: false)

franny_b = EmployeePosition.create(employee: francisco, position: bartender, archived: false)
franny_bb = EmployeePosition.create(employee: francisco, position: barback, archived: false)
tiff_b = EmployeePosition.create(employee: tiff, position: bartender, archived: false)
tiff_s = EmployeePosition.create(employee: tiff, position: server, archived: false)

evens_server = ScheduleTypePosition.create(schedule_type: evens, position: server, points: 1)
evens_bartender = ScheduleTypePosition.create(schedule_type: evens, position: bartender, points: 1)
evens_barback = ScheduleTypePosition.create(schedule_type: evens, position: barback, points: 1)
evens_host = ScheduleTypePosition.create(schedule_type: evens, position: host, points: 1)
weighted_server = ScheduleTypePosition.create(schedule_type: weighted, position: server, points: 5)
weighted_bartender = ScheduleTypePosition.create(schedule_type: weighted, position: bartender, points: 6)
weighted_barback = ScheduleTypePosition.create(schedule_type: weighted, position: barback, points: 3)
weighted_host = ScheduleTypePosition.create(schedule_type: weighted, position: host, points: 2)


tuesday_8_9 = Schedule.create(note: "Dinner service", date: "08/09/2015", schedule_type: evens)
wednesday_8_10 = Schedule.create(note: "Dinner service", date: "08/10/2015", schedule_type: evens)
thurdsday_8_11 = Schedule.create(note: "Dinner service", date: "08/11/2015", schedule_type: weighted)
friday_8_12 = Schedule.create(note: "Dinner service", date: "08/12/2015", schedule_type: weighted)

pool_8_9 = TipPool.create(schedule: tuesday_8_9, amount: 500, dispersed: true, dispersement_point: "08/09/2015 11:59 PM")
pool_8_10 = TipPool.create(schedule: wednesday_8_10, amount: 700, dispersed: true, dispersement_point: "08/10/2015 11:59 PM")
pool_8_11 = TipPool.create(schedule: thurdsday_8_11, amount: 900, dispersed: true, dispersement_point: "08/11/2015 11:59 PM")
pool_8_12 = TipPool.create(schedule: friday_8_12, amount: 1200, dispersed: true, dispersement_point: "08/12/2015 11:59 PM")

TipPoolEmployeePosition.create(employee_position: franny_b, tip_pool: pool_8_9)
TipPoolEmployeePosition.create(employee_position: franny_b, tip_pool: pool_8_10)
TipPoolEmployeePosition.create(employee_position: franny_bb, tip_pool: pool_8_11)
TipPoolEmployeePosition.create(employee_position: franny_bb, tip_pool: pool_8_12)
TipPoolEmployeePosition.create(employee_position: tiff_b, tip_pool: pool_8_9)
TipPoolEmployeePosition.create(employee_position: tiff_b, tip_pool: pool_8_10)
TipPoolEmployeePosition.create(employee_position: tiff_s, tip_pool: pool_8_11)
TipPoolEmployeePosition.create(employee_position: tiff_s, tip_pool: pool_8_12)

ScheduleEmployeePosition.create(schedule: tuesday_8_9, employee_position: franny_bb)
ScheduleEmployeePosition.create(schedule: wednesday_8_10, employee_position: franny_bb)
ScheduleEmployeePosition.create(schedule: thurdsday_8_11, employee_position: franny_b)
ScheduleEmployeePosition.create(schedule: friday_8_12, employee_position: franny_b)

ScheduleEmployeePosition.create(schedule: tuesday_8_9, employee_position: tiff_b)
ScheduleEmployeePosition.create(schedule: wednesday_8_10, employee_position: tiff_b)
ScheduleEmployeePosition.create(schedule: thurdsday_8_11, employee_position: tiff_s)
ScheduleEmployeePosition.create(schedule: friday_8_12, employee_position: tiff_s)


