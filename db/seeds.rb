# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#快速建立假帳號
Faker::Config.locale = :en

Admin.delete_all

Admin.create(name: 'Patrick', account: 'afgn', email: 'a@a.a', password: '123456')

20.times do |i|
  name = Faker::Name.name[3..15].gsub(/\W/,'')
  account = name.downcase
  domain = Faker::Internet.email.split('@')[1]
  email = account + "@" + domain
  Admin.create(
    name: name,
    #account: Faker::Alphanumeric.alpha(number: 5),
    email: email,
    #account: email.split('@')[0],
    account: account,
    password: 'pass@123'
    )
end

