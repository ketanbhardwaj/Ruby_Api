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

# t1 = User.create(name: "Ketan", email: "ketan268", gender: "Male", phone: 123, username: "ketan268", password: "pass")
# Order.create(price: "444", user_id: t1.id)
# Order.create(price: "555", user_id: t1.id)
# Order.create(price: "666", user_id: t1.id)
# Deal.create(deal_price: 299, deal_name: "30% off on total bill", deal_location: "Chandigarh")
# Deal.create(deal_price: 99, deal_name: "20% off on total bill", deal_location: "Bangalore")
# Deal.create(deal_price: 343, deal_name: "10% off on total bill", deal_location: "Delhi")
# Deal.create(deal_price: 999, deal_name: "15% off on total bill", deal_location: "Mumbai")
# Deal.create(deal_price: 220, deal_name: "35% off on total bill", deal_location: "Pune")

deal = Deal.create(deal_price: 199, deal_name: "40% off on total bill", deal_location: "Pune")
order = Order.create(price: "434", user_id: 11)

DealOrder.create(order: order, deal: deal)

deal = Deal.create(deal_price: 999, deal_name: "50% off on total bill", deal_location: "Chandigarh")
order = Order.create(price: "434", user_id: 11)

DealOrder.create(order: order, deal: deal)