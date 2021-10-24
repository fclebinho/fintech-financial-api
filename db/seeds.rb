# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



5.times do |i|
  Entry.create(kind: "DEBIT", description: "Lorem ipsum saves lives", due_date: "2021/10/24", amount: 45.98 * (i + 1)) 
end