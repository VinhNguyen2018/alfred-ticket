
puts "destroy all orders"

Order.destroy_all

puts "destroy all concerts events"

ConcertEvent.destroy_all

puts "destroy all concert halls"

ConcertHall.destroy_all

puts "destroy all users"

User.destroy_all

puts "destroyed all database"

puts "Creating Users"

francois = User.new(
    first_name: "François",
    last_name: "Nguyen",
    gender: "M",
    address: "16 villa Gaudelet",
    email: "francois@gmail.com",
    password: "ahahahah",
    country: "France",
    zip_code: "75011",
    city: "Paris",
    phone_number: "0629971405"
  )
francois.save!

puts "Creating concert halls"

accor_hotel_arena = ConcertHall.new(
    name: "AccorHotels Arena",
    address: "8 Boulevard de Bercy, 75012 Paris",
    country: "France"
  )
accor_hotel_arena.save!

puts "Creating concert events"

beyonce = ConcertEvent.new(
    event_date: "01/01/2020",
    artist_name: "Beyoncé",
    photo: "../assets/images/beyonce.jpeg",
    category: "Catégorie unique",
    price_cents: 10000,
    concert_hall: ConcertHall.first
  )

beyonce.save!

ed_sheeran = ConcertEvent.new(
    event_date: "01/01/2020",
    artist_name: "Ed Sheeran",
    photo: "../assets/images/edsheeran.jpeg",
    category: "Catégorie unique",
    price_cents: 5000,
    concert_hall: ConcertHall.first
  )

ed_sheeran.save!

puts "finished"
