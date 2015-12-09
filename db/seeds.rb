# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Person.create(name: 'Ketan', phone: '1234567890')
# Person.create(name: 'Karan', phone: '65453443546')
# Person.create(name: 'Sameer', phone: '57657677657')
# Person.create(name: 'Vinay', phone: '245646445634')
# Person.create(name: 'New', phone: '1231231')

t1 = User.create(name: "Ketan", email: "ketan268", gender: "Male", phone: 123, username: "ketan268", password: "pass")
Order.create(price: "444", user_id: t1.id)
Order.create(price: "555", user_id: t1.id)
Order.create(price: "666", user_id: t1.id)