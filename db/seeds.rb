# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destruction des Hosts et Homes"
Home.destroy_all
Host.destroy_all

puts "lancement seeds"

host_fab = Host.create(
    firstname: "Fabien",
    email: 'fabiennaour@gmail.com',
    superhost: true,
    validated: true
  )
host_unknown = Host.create(
    firstname: "Not validated",
    email: 'fab@gmail.com',
    superhost: false,
    validated: false
  )
home1_fab = Home.create(
    bnblink: "https://www.airbnb.fr/rooms/25060985?s=67&shared_item_type=1&virality_entry_point=1&sharer_id=19378947",
    adress: '8 rue Lulli, 13007 Marseille',
    area: 'opera',
    bedding: 2,
    beg_date: "2019-12-08",
    end_date: "2019-12-20",
    long: 5.376042,
    lat:43.292825
  )
home2_fab = Home.create(
    bnblink: "https://www.airbnb.fr/rooms/35563936?wl_source=list&wl_id=298881467&role=wishlist_owner&adults=1&children=0&infants=0&source_impression_id=p3_1561641438_MJwGQN9OYhDT2LPH
",
    adress: 'vallon des auffes, 13007 Marseille',
    area: 'Vallon des auffes',
    bedding: 6,
    beg_date: "2019-10-08",
    end_date: "2019-10-20",
    long: 5.350247,
    lat:43.285447
  )

home1_fab.host = host_fab
home1_fab.save!

home2_fab.host = host_fab
home2_fab.save!

host_fab.save!
