# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lead.destroy_all
Stage.destroy_all
s1 = Stage.create(name: "Prospect")
s2 = Stage.create(name: "Contacted")
s3 = Stage.create(name: "Interested")
 
100.times do |u|
 Lead.create(name: Faker::Name.name, email: Faker::Internet.email, stage: s1)
end
 
50.times do |u|
 Lead.create(name: Faker::Name.name, email: Faker::Internet.email, stage: s2)
end
 
10.times do |u|
 Lead.create(name: Faker::Name.name, email: Faker::Internet.email, stage: s3)
end