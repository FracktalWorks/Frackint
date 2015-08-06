# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Admin",email: 'support@fracktal.in', password: 'Fra@Works', password_confirmation: 'Fra@Works')
User.create!(name: "Rajan",email: 'rajan@fracktal.in', password: 'Fra@Works', password_confirmation: 'Fra@Works')

Item.create!(code: "0000-0000-0001", title: "IGUS nut", description: "5mm ID", quantity: 5, safetystock: 4, reorderlevel: 8, leadtime: 15)
Item.create!(code: "0000-0000-0002", title: "Bed plate", description: "25x34x45", quantity: 2, safetystock: 3, reorderlevel: 5, leadtime: 25)
Item.create!(code: "0000-0000-0003", title: "Logo plate", description: "Red", quantity: 10, safetystock: 2, reorderlevel: 5, leadtime: 35)
Item.create!(code: "0000-0000-0004", title: "Base Nut", description: "3mm thick", quantity: 2, safetystock: 3, reorderlevel: 4, leadtime: 45)