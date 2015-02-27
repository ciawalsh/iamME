# This file should contain all the record creation needed to seed the database with its default values
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

user     = User.create(email: "india@gingersunite.com", password: "12345678",
                      password_confirmation: "12345678")
calendar = Calendar.create(name: "fruit", user: user, start_date: Date.new)

event1   = Event.create(name: "Grapes Party", description: "Grapes are in season!",
                        user: user, calendar: calendar, date: Date.new)
event2   = Event.create(name: "Mango Fest", description: "So juicy", user: user,
                        calendar: calendar, date: Date.new)



