# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Rails.env.development?
   User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
   AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

if Rails.env.production?
   User.create!(email: 'guest@mymedical.com', password: '123456', password_confirmation: '123456')
   AdminUser.create!(email: 'admin@mymedical.com', password: '123456', password_confirmation: '123456')
end
   
