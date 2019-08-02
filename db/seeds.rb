
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
    full_address: "8 Boulevard de Bercy, 75012 Paris",
    country: "France",
    city: "Paris"
  )
accor_hotel_arena.save!

puts "Creating concert events"

beyonce = ConcertEvent.new(
    event_date: "01/01/2020",
    artist_name: "Beyoncé",
    photo: "https://beninwebtv.com/wp-content/uploads/2019/06/beyonce_-e1513614279669.jpg",
    category: "Catégorie unique",
    price_cents: 10000,
    concert_hall: ConcertHall.first,
    event_end_booking: "01/09/2019"
  )

beyonce.save!

ed_sheeran = ConcertEvent.new(
    event_date: "01/01/2020",
    artist_name: "Ed Sheeran",
    photo: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/07/12/15/ed-sheeran.jpg?w968",
    category: "Catégorie unique",
    price_cents: 5000,
    concert_hall: ConcertHall.first,
    event_end_booking: "01/09/2019"
  )

ed_sheeran.save!

puts "finished"
