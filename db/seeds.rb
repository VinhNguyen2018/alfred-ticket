
puts "destroy all orders"

Order.destroy_all

puts "destroy all concerts events"

ConcertEvent.destroy_all

puts "destroy all concert halls"

ConcertHall.destroy_all

puts "destroy all categories"

Category.destroy_all

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
    city: "Paris",
    photo: "https://external-preview.redd.it/3wVNA4ilbTWAv3IuOqZB68YKhA9HGhcHjV_0pAiRers.png?width=960&crop=smart&auto=webp&s=b288a8643556298e5686b377df776ff0acbfb7fd"
  )
accor_hotel_arena.save!


puts "Creating concert events"

beyonce = ConcertEvent.new(
    event_date: "01/01/2020",
    artist_name: "Beyoncé",
    photo: "https://beninwebtv.com/wp-content/uploads/2019/06/beyonce_-e1513614279669.jpg",
    concert_hall: ConcertHall.first,
    event_end_booking: "2019-01-09"
  )

beyonce.save!

ed_sheeran = ConcertEvent.new(
    event_date: "01/01/2020",
    artist_name: "Ed Sheeran",
    photo: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/07/12/15/ed-sheeran.jpg?w968",
    concert_hall: ConcertHall.first,
    event_end_booking: "2019-09-01"
  )

ed_sheeran.save!

puts "Creating categories"

beyonce_cat1 = Category.new(
  name: "CAT1",
  price: 299,
  concert_event: ConcertEvent.first,
  fast_delivery_fee: 10
)
beyonce_cat1.save!

beyonce_cat2 = Category.new(
  name: "CAT2",
  price: 399,
  concert_event: ConcertEvent.first,
  fast_delivery_fee: 5
)
beyonce_cat2.save!

ed_cat1 = Category.new(
  name: "Carré or",
  price: 200.99,
  concert_event: ConcertEvent.second,
  fast_delivery_fee: 10
)
ed_cat1.save!

ed_cat2 = Category.new(
  name: "Fossé",
  price: 300,
  concert_event: ConcertEvent.second,
  fast_delivery_fee: 5
)
ed_cat2.save!

puts "finished"
