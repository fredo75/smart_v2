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
survey_1 = Survey.create(heat_type: 0.410,
                         housing_type: 16,
                         area: 75,
                         isolated: true,
                         children_inhabitants: 2,
                         adults_inhabitants: 2,
                         house_inhabitants: 4,
                         house_temp: 0.03,
                         energy_class: 0.06,
                         vegetable_season: 0.44,
                         eating_habits: 0.63,
                         bio_buyings: -0.13,
                         vehicule_km: 15000,
                         fuel_type: 1,
                         public_transp: 5000,
                         upcycling: 1,
                         green_invest: 0,
                         user: fred)




# survey_2 = Survey.create(heat_type: "gaz",
#                          housing_type: ,
#                          area: 200,
#                          isolated: true,
#                          children_inhabitants: ,
#                          adults_inhabitants: ,
#                          house_inhabitants: 4,
#                          house_temp: 21,
#                          energy_class: ,
#                          vegetable_season: ,
#                          eating_habits: ,
#                          bio_buyings: ,
#                          vehicle_km: ,
#                          fuel_type: ,
#                          public_transp: ,
#                          upcycling: ,
#                          green_invest: ,
#                          user: tiphaine)


# survey_3 = Survey.create(heat_type: "gaz",
#                          housing_type: ,
#                          area: 200,
#                          isolated: true,
#                          children_inhabitants: ,
#                          adults_inhabitants: ,
#                          house_inhabitants: 4,
#                          house_temp: 21,
#                          energy_class: ,
#                          vegetable_season: ,
#                          eating_habits: ,
#                          bio_buyings: ,
#                          vehicle_km: ,
#                          fuel_type: ,
#                          public_transp: ,
#                          upcycling: ,
#                          green_invest: ,
#                          user: camille)


