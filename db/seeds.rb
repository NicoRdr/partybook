# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

########### Utilisateurs ###############

@cyrille = User.create( nom: 'Grosse',
              email: 'cyrille@email.com',
              prenom: 'Cyrille',
              password: 'aaaaaaaa',
              soiree_id: @annee.id )
              
@ludivine = User.create([{ nom: 'Coppel',
              email: 'ludivine@email.com',
              prenom: 'Ludivine',
              password: 'aaaaaaaa' }])

@simon = User.create([{ nom: 'Danger',
              email: 'Simon@email.com',
              prenom: 'Simon',
              password: 'aaaaaaaa' }])

@coralie = User.create([{ nom: 'Sylvestre',
              email: 'coralie@email.com',
              prenom: 'Coralie',
              password: 'aaaaaaaa' }])

@thierry = User.create([{ nom: 'Damey',
              email: 'thierry@email.com',
              prenom: 'Thierry',
              password: 'aaaaaaaa' }])

@alexandra = User.create([{ nom: 'Duval',
              email: 'alexandra@email.com',
              prenom: 'Alexandra',
              password: 'aaaaaaaa' }])




########### Organisateurs ###############

@julien = Organisateurs.create([{ nom: 'Ente',
              email: 'julien@email.com',
              prenom: 'Julien',
              password: 'aaaaaaaa' }])
              
@ludivine = Organisateurs.create([{ nom: 'Nadalini',
              email: 'ludivine@email.com',
              prenom: 'Ludivine',
              password: 'aaaaaaaa' }])

@celine = Organisateurs.create([{ nom: 'Daffe',
              email: 'celine@email.com',
              prenom: 'Céline',
              password: 'aaaaaaaa' }])

@alex = Organisateurs.create([{ nom: 'Bodier',
              email: 'alex@email.com',
              prenom: 'Alex',
              password: 'aaaaaaaa' }])



########### Soirées ###############

Party.create( nom: 'Mousse',
              date: Date.new(2015, 12, 10)
              descrition: 'Soirée mousse, apportez vos maillots de bain et serviettes !',
              places: 50,
              prix: 10,
              lieu: 'Paris',
              type: 'DanceFloor' )
              
Party.create([{ nom: 'Nadalini',
              date: Date.new(2016, 01, 30)
              email: 'ludivine@email.com',
              prenom: 'Ludivine',
              password: 'aaaaaaaa'
              user_id:  }])

@annee = Party.create( nom: 'Année 80',
              date: Date.new(2015, 12, 02)
              descrition: 'Revivez les années 80 sans la coupe de cheveux !',
              places: 80,
              prix: 80,
              lieu: 'Chartres',
              type: 'Retro' )

Party.create( nom: 'Jour de l\'an',
              date: Date.new(2015, 12, 31)
              descrition: 'Fetez la nouvelle année avec la Companie Créole et Kassav',
              places: 100,
              prix: 50,
              lieu: 'La Loupe',
              type: 'Déguisée' )

Party.create( nom: 'Electro',
              date: Date.new(2016, 06, 01)
              descrition: 'Soirée remix music...',
              places: 200,
              prix: 30,
              lieu: 'Roubaix',
              type: 'Beuverie' )


