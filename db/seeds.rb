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
tiphaine = User.create(email: 't@gmail.com', password: '123456')
camille = User.create(email: 'c@gmail.com', password: '123456')
adrien = User.create(email: 'a@gmail.com', password: '123456')



puts "Create Survey"

survey_1 = Survey.create(heat_type: 0.2410,
                          housing_type: 16,
                         area: 200,
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





survey_2 = Survey.create(heat_type: 0,
                          housing_type: 0,
                         area: 0,
                         isolated: true,
                         children_inhabitants: 0,
                         adults_inhabitants: 0,
                         house_inhabitants: 0,
                         house_temp: 0,
                         energy_class: 0,
                         vegetable_season: 0,
                         eating_habits: 0,
                         bio_buyings: 0,
                         vehicule_km: 0,
                         fuel_type: 0,
                         public_transp: 0,
                         upcycling: 0,
                         green_invest: 0,
                         user: fred)


eco_actions1 = EcoAction.create(title: "Economiser de l'eau", description: "J’installe des réducteurs de débit sur les robinets pour réguler le débit d’eau : ils diminuent le débit d'eau qui coule en dispersant le flux. 
Par exemple, pour une famille de 4 personnes, les aérateurs placés sur les robinets et les éco-douchettes génèrent une économie annuelle de 30% d'eau.
12 litres par minute : c’est le débit courant d’un robinet. Si je laisse couler l’eau en me brossant les dents, je gaspille environ 10 000 litres d’eau par an. J’opte pour l’utilisation du gobelet !
Je place une bouteille lestée dans le réservoir des toilettes pour diminuer la consommation d’eau.
Si je fais la vaisselle à la main, j’utilise un bac : c’est plus économique que de laisser l’eau couler.
")

eco_actions2 = EcoAction.create(title: "Je bois l'eau du robinet", description: "Elle revient jusqu’à 200 fois moins chère que l’eau en bouteille.
Bonne pour la santé, elle est le produit alimentaire le plus contrôlé de France.")

eco_actions3 = EcoAction.create(title: "Fruits et des légumes de saison ", description: "Pour limiter la consommation d’énergie liée à leur transport et au chauffage des serres. Un fruit importé hors saison par avion consomme pour son transport 10 à 20 fois plus de pétrole que le même produit localement.
")

eco_actions4 = EcoAction.create(title: "Je favorise les éco-recharges", description: "Mini-doses pour faire des économies d’argent et réduire mes déchets !
")

eco_actions5 = EcoAction.create(title: "Chauffage", description: "Je réduis mon thermostat d’1°C pour économiser de 5 à 10 % (en fonction de l’isolation de mon logement) sur ma facture de chauffage.  19°C est la température idéale dans les pièces à vivre (salon, salle à manger, cuisine).
")

eco_actions6 = EcoAction.create(title: "Eco-mobilité", description: "Je fais les petits trajets à pied ou à vélo. J’opte pour le co-voiturage.
Je privilégie les transports en commun : bus, tram, train. J’adopte l’éco-conduite.
")
