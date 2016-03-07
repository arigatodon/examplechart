# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lead.destroy_all
Stage.destroy_all
User.destroy_all


u1 = User.create(name: "Igor", lastname: "Venegas", email: "venegas.igor@gmail.com", password: "administrador", role: 0)
u2 =User.create(name: "Caro", lastname: "Hernena", email: "carola@gmail.com", password: "pruebauno")
u3 =User.create(name: "Wissepi", lastname: "Perez", email: "wissepi@gmail.com", password: "pruebados")


s1 = Stage.create(name: "Prospect")
s2 = Stage.create(name: "Contacted")
s3 = Stage.create(name: "Interested")
 randum = User.all
100.times do |u|
 Lead.create(name: Faker::Name.name, email: Faker::Internet.email, stage: s1, user: randum.sample)
end
 
50.times do |u|
 Lead.create(name: Faker::Name.name, email: Faker::Internet.email, stage: s2, user: randum.sample)
end
 
10.times do |u|
 Lead.create(name: Faker::Name.name, email: Faker::Internet.email, stage: s3, user: randum.sample)
end