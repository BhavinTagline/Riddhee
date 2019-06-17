# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

             User.create!(name:  "Example User2",
                          email: "example2@railstutorial.org",
                          password:              "foobar",
                          password_confirmation: "foobar",
                          activated: true,
                          activated_at: Time.zone.now)

5.times do |n|
  name  = Faker::Name.name
  # email = "example-#{n+1}@railstutorial.org"
  email = Faker::Internet.email
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)

               users = User.order(:created_at).take(3)
               5.times do
                 content = Faker::Lorem.sentence(5)
                 users.each { |user| user.microposts.create!(content: content) }
               end

end
