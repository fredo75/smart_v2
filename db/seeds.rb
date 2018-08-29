# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy"
Survey.destroy_all
User.destroy_all



puts "Create User"

fred = User.create(email: 'f@gmail.com', password: '123456')
tiphaine = User.create(email: 't@gmail.com', password: '654321')
camille = User.create(email: 'c@gmail.com', password: 'azerty')
adrien = User.create(email: 'a@gmail.com', password: 'qwerty')



puts "Create Survey"
survey_1 = Survey.create(heat_type: "gaz",
                         area: 200,
                         isolated: true,
                         house_inhabitants: 4,
                         house_temp: 21,
                         user: fred)




survey_2 = Survey.create(heat_type: "fioul",
                         area: 70,
                         isolated: true,
                         house_inhabitants: 3,
                         house_temp: 19,
                         user: tiphaine)


survey_3 = Survey.create(heat_type: "bois",
                         area: 100,
                         isolated: true,
                         house_inhabitants: 5,
                         house_temp: 20,
                         user: camille)


survey_4 = Survey.create(heat_type: "gaz",
                          area: 150,
                          isolated: true,
                          house_inhabitants: 4,
                          house_temp: 21,
                          user: adrien)


