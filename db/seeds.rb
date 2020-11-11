# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '» Clearing of database ...'
Restaurant.destroy_all

puts '» Creating new entries ...'
Restaurant.create!(name: 'PishPosh', address: 'London East Area', phone_number: '+49 1522 32423423423', category: 'french')
Restaurant.create!(name: 'Ratskeller', address: 'Munich', phone_number: '+49 89 232322323', category: 'japanese')
Restaurant.create!(name: 'Sim Sim', address: 'Munich', phone_number: '+49 89 45238928', category: 'belgian')
Restaurant.create!(name: 'Chi Thu @ Fraunhofer', address: 'Munich', phone_number: nil, category: 'chinese')
Restaurant.create!(name: "McDonald's", address: 'Munich', phone_number: nil, category: 'belgian')

puts '» Finished seeding of database'
