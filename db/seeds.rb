# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create(title: "The Basics of Nursing", description: "This course describes what could happen on your first day at the hospital.")
Course.create(title: "ER Etiquette", description: "This course explains the common observations you'll be expected to adhere to once in a real working environment.")
Course.create(title: "Murphy's Law", description: "You walk in to start your shift, and everything goes wrong. How will you survive?")
Enrollment.create(user_id: 1, course_id: 1)


