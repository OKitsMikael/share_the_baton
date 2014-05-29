# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create(title: "The Basics of Nursing", description: "This course describes what could happen on your first day at the hospital.")
Enrollment.create(user_id: 1, course_id: 1)


