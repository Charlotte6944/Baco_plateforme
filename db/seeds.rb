# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

InscriptionsTournoi.destroy_all
User.destroy_all
Tournoi.destroy_all

User.create!(
  nom: 'ADMIN',
  prenom: 'Charlotte',
  num_licence: 0,
  adult?: true,
  encadre?: true,
  email: 'test@test.com',
  password: '123456',
  password_confirmation: '123456',
  role: :admin
)

User.create!(
  nom: 'JOUEUR',
  prenom: 'Charlotte',
  num_licence: 1,
  adult?: true,
  encadre?: true,
  email: 'test@test.fr',
  password: '123456',
  password_confirmation: '123456'
)

Tournoi.create!(
  nom: 'Bacosun',
  ville: 'Oullins',
  date_debut_tournoi: '11/06/2022',
  date_fin_tournoi: '12/06/2022',
  inscription_max: '11/06/2022',
  catégories: 'NC à D9',
  date_simple: '11/06/2022',
  date_double: '12/06/2022',
  date_mixte: '11/06/2022',
  tarif_1: 18,
  tarif_2: 20,
  tarif_3: 0,
  url_tournoi: 'http://www.badiste.fr/tournoi-badminton/bacosun-2022-oullins-13568.html'
)

Tournoi.create!(
  nom: 'Tournoi des Lumières',
  ville: 'Lyon',
  date_debut_tournoi: '29/10/2022',
  date_fin_tournoi: '31/10/2022',
  inscription_max: '11/09/2022',
  catégories: 'NC à D9',
  date_simple: '29/10/2022',
  date_double: '31/10/2022',
  date_mixte: '11/9/2022',
  tarif_1: 20,
  tarif_2: 25,
  tarif_3: 30,
  url_tournoi: 'http://www.badiste.fr/tournoi-badminton/22-me-tournoi-international-du-guignol-ecobad-lyon-13919.html'
)

Tournoi.create!(
  nom: 'Tournoi de simple',
  ville: 'Bron',
  date_debut_tournoi: '19/07/2022',
  date_fin_tournoi: '19/07/2022',
  inscription_max: '19/06/2022',
  catégories: 'NC à D9',
  date_simple: '19/07/2022',
  tarif_1: 20,
  url_tournoi: 'http://www.badiste.fr/tournoi-badminton/22-me-tournoi-international-du-guignol-ecobad-lyon-13919.html'
)

# creation inscriptions tournois

InscriptionsTournoi.create!(
  date_inscription: '13/07/2022',
  user_id: User.first.id,
  tournoi_id: Tournoi.first.id,
  validation_inscription_tournoi: true
)

InscriptionsTournoi.create!(
  date_inscription: '26/05/2022',
  user_id: User.first.id,
  tournoi_id: Tournoi.second.id,
  validation_inscription_tournoi: false
)

InscriptionsTournoi.create!(
  date_inscription: '13/07/2022',
  user_id: User.second.id,
  tournoi_id: Tournoi.second.id,
  validation_inscription_tournoi: false
)
