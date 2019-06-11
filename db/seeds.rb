# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Rails.env.development?
   User.create!(first_name: 'Guest', last_name: 'Mode', email: 'guest@mymedical.com', password: '123456', password_confirmation: '123456')
   User.create!(first_name: 'Ari', last_name: 'Gold', email: 'arigold@gmail.com', password: '123456', password_confirmation: '123456')
   AdminUser.create!(email: 'admin@mymedical.com', password: 'password', password_confirmation: 'password')
end

if Rails.env.production?
   User.create!(first_name: 'Guest', last_name: 'Mode', email: 'guest@mymedical.com', password: '123456', password_confirmation: '123456')
   User.create!(first_name: 'Ari', last_name: 'Gold', email: 'arigold@gmail.com', password: '123456', password_confirmation: '123456')
   AdminUser.create!(email: 'admin@mymedical.com', password: 'password', password_confirmation: 'password')
end
