# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Destroying UserEvents'
UserEvent.destroy_all
puts 'Destroying Events'
Event.destroy_all
puts 'Destroying Messages'
Message.destroy_all
puts 'Destroying Conversations'
Conversation.destroy_all
puts 'Destroying User_interests'
UserInterest.destroy_all
puts 'Destroying Matches'
Match.destroy_all
puts 'Destroying Users'
User.destroy_all
puts 'Database clean'
puts 'Creating interests'

sport_photo_array = ["https://res.cloudinary.com/dqssam2go/image/upload/v1543912595/riley-mccullough-196374-unsplash_1.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543912867/alex-guillaume-1082212-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543913012/frame-harirak-602126-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543913169/joshua-peacock-144342-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543913364/max-winkler-380937-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543913587/karla-rivera-1083691-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543913738/joel-muniz-433073-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543914034/cricket-wicket.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543914273/fancy-crave-22481-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543914426/court-prather-792765-unsplash.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543914569/eugene-lim-380281-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543914662/miguel-puig-477627-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543914875/jeffrey-lin-1144904-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543914982/jessica-wilson-539054-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543915115/kalen-emsley-94118-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543915294/quino-al-197082-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543915435/jarrett-fifield-507131-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543915653/re-ranger-performance-shooting-eyewear_1.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543915849/iStock-525023867-e1505208348820.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543916124/gulitti_act18_web.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543916259/8951-tabletennis512.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543916586/p0428bq9.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543916912/hiresc5177c2e82f36c30f4495ed809ef52f6_crop_north.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543917108/victor-freitas-667584-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543917495/W020180119671670553901.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543917629/chris-chow-772138-unsplash.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543917766/nicolas-tissot-435976-unsplash.jpg"]
movie_photo_array = ["https://res.cloudinary.com/dqssam2go/image/upload/v1543918813/the-amazing-spider-man-film-1.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543918969/Fantastic-Beasts-And-Where-to-Find-Them.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543918312/tbbts10_5a5f1a40473b4.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543919216/narcos0003-e1473329421771-696x459.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543919360/the-walking-dead-s08-e09-mort.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543919547/25-og.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543919753/2010_KINGSSPEECH_QUAD.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543920042/gladiatorreviewslarge1.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543920175/IMG_5002-636x474.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543920480/medium-aabhaas-sherlock-holmes-movies-pictures-movie-wall-poster-original-imaetdvbappwcw7b.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543920751/house-of-cards_1.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543919929/s-l300.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543921172/51osjXg5ILL._SX425_.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543921346/descarga_1.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543921718/avengers-infinity-war-ending-end-credits-scene-963150.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543921902/black-mirror-season-5-release-date-700x321.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543922049/once-upon-a-time-in-west-356x220.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543922307/mamma.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543922619/RP16186-The-Incredibles-2-Family.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543923058/ice-documentary.jpg"]
books_photo_array = ["https://res.cloudinary.com/dqssam2go/image/upload/v1543923478/batman-retro-budget-pencil-case-i27934.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543924266/400x300.fitandcrop.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543924663/descarga_2.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543924895/Peter-James-The-Crime-Book-intro2.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543925166/015902.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543925481/9781400086245.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543925789/01040df8837ed8f5fc0d6da0425d8fac.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543925910/hqdefault.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543926123/powers_of_darkness_dracula_book.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543926232/book_vs_movie_thedavincicod.jpg","https://res.cloudinary.com/dqssam2go/image/upload/v1543926395/descarga_3.jpg", "https://res.cloudinary.com/dqssam2go/image/upload/v1543926668/anna-karenina-movie-wallpapers-3-1024x768.jpg"]
books_photo = "https://res.cloudinary.com/dqssam2go/image/upload/v1543923478/batman-retro-budget-pencil-case-i27934.jpg"

interest_list = {
  "sport" => [["American Football", sport_photo_array[0]], ["Archery", sport_photo_array[1]], ["Badminton", sport_photo_array[2]], ["Baseball", sport_photo_array[3]], ["Basketball", sport_photo_array[4]], ["Bowling", sport_photo_array[5]], ["Boxing", sport_photo_array[6]], ["Cricket", sport_photo_array[7]], ["Football", sport_photo_array[8]], ["Golf", sport_photo_array[9]], ["Gymnastics", sport_photo_array[10]], ["Handball", sport_photo_array[11]], ["Hockey", sport_photo_array[12]], ["Ice Hockey", sport_photo_array[13]], ["Rowing", sport_photo_array[14]], ["Rugby", sport_photo_array[15]], ["Sailing", sport_photo_array[16]], ["Shooting", sport_photo_array[17]], ["Squash", sport_photo_array[18]], ["Swimming", sport_photo_array[19]], ["Table Tennis", sport_photo_array[20]], ["Tennis", sport_photo_array[21]], ["Volleyball", sport_photo_array[22]], ["Weightlifting", sport_photo_array[23]], ["Winter Sports", sport_photo_array[24]], ["Wrestling", sport_photo_array[25]],  ["Other - Not Listed", sport_photo_array[26]]],
  "movies" => [["Action", movie_photo_array[0]], ["Adventure", movie_photo_array[1]], ["Comedy", movie_photo_array[2]], ["Crime", movie_photo_array[3]], ["Drama", movie_photo_array[4]], ["Fantasy", movie_photo_array[5]], ["Historical", movie_photo_array[6]], ["Historical Fiction", movie_photo_array[7]], ["Horror", movie_photo_array[8]], ["Mystery", movie_photo_array[9]], ["Political", movie_photo_array[10]], ["Romance", movie_photo_array[11]], ["Saga", movie_photo_array[12]], ["Satire", movie_photo_array[13]], ["Science Fiction", movie_photo_array[14]], ["Thriller", movie_photo_array[15]], ["Western", movie_photo_array[16]], ["Romantic Comedy", movie_photo_array[17]], ["Animation", movie_photo_array[18]], ["Other - Not Listed", movie_photo_array[19]]],
  "books" => [["Action", books_photo_array[0]], ["Adventure", books_photo_array[1]], ["Comedy", books_photo_array[2]], ["Crime", books_photo_array[3]], ["Drama", books_photo_array[4]], ["Fantasy", books_photo_array[5]], ["Historical", books_photo_array[6]], ["Historical Fiction", books_photo_array[7]], ["Horror", books_photo_array[8]], ["Mystery", books_photo_array[9]], ["Political", books_photo_array[10]], ["Romance", books_photo_array[11]], ["Saga", books_photo], ["Satire", books_photo], ["Science Fiction", books_photo], ["Thriller", books_photo], ["Western", books_photo], ["Romantic Comedy", books_photo], ["Other - Not Listed", books_photo]],
  # "food" => ["Fusion", "Vegan", "Vegetarian", "Cajun", "Chinese", "French", "Greek", "Indian", "Italian", "Korean", "Mexican", "Polish", "Pakistani", "Peruvian", "Portuguese", "Russian", "Somali", "Turkish", "Other - Not Listed"],
  # "video" => ["Wii U", "PlayStation 4", "Xbox One", "Nintendo Switch", "Nintendo DS", "Game Boy", "Nintendo 64", "GameCube", "Other - Not Listed"],
  # "hobbies" => ["Fishing", "Gardening", "Listening to Music", "Shopping", "Traveling", "Sewing", "Playing Music", "Crafts", "Watching Sports", "Bicycling", "Playing Cards", "Hiking", "Cooking", "Camping", "Painting", "Running", "Dancing", "Photography", "Theater", "Other - Not Listed"],
  # "games" => ["Scrabble", "Monopoly", "Catan", "Qwirkle", "Risk", "Axis & Allies", "Clue", "Battleship", "Jenga", "Trivial Pursuit", "Twister", "Blokus", "Connect Four", "Operation", "Yahtzee", "Cards Against Humanity", "Sorry!", "Hungry Hungry Hippos", "Mouse Trap", "Cranium", "Chutes and Ladders", "Scattergories", "The Game of Life", "Kerplunk", "Trouble", "Zingo", "Candy Land", "Pictionary", "Cootie", "PieFace", "Other - Not Listed"],
  # "causes" => ["Community", "Children & Youth", "Poverty", "Education & Literacy", "Health & Medicine", "Seniors", "Arts & Culture", "Advocacy & Human Rights", "Women", "Disabled", "Homelessness & Housing", "Water & Sanitation", "Agriculture & Farming", "Economic Development", "Research", "Other - Not Listed"]
}

interest_list.each do |key, value|
  value.each do |type|
    Interest.create!(area: key, variant: type[0], photo: type[1])
  end
end

puts 'Creating users'
user_list = [
  ["Kaylin", "Bittner", "kaylin@bittner.de", "KaylinBittner", "KaylinBittner", "https://kitt.lewagon.com/placeholder/users/kaylinbittner", "Berlin", "1990-05-21", "buddy", "I love listening, talking, discussing, debating, storytelling, deliberating, conversing and all the other varieties of thought exchange between people. I would love discussing with you about our favorite sports,films, books and much more. I am looking forward to meeting you!", 2, 15, 25],
  ["Elena", "Tamayo", "elena@tamayo.com", "ElenaTamayo", "ElenaTamayo", "https://kitt.lewagon.com/placeholder/users/elenatamayo", "Berlin", "1995-04-18", "patient", "I love listening, talking, discussing, debating, storytelling, deliberating, conversing and all the other varieties of thought exchange between people. I would love discussing with you about our favorite sports,films, books and much more. I am looking forward to meeting you!", 5, 25, 35],
  ["Fritz", "Meyer", "fritz@meyer.com", "FritzMeyer", "FritzMeyer", "https://kitt.lewagon.com/placeholder/users/meyerfr", "Berlin", "2000-02-04", "coordinator","I love listening, talking, discussing, debating, storytelling, deliberating, conversing and all the other varieties of thought exchange between people. I would love discussing with you about our favorite sports,films, books and much more. I am looking forward to meeting you!", 3, 22, 39]
]

user_list.each do |first_name, last_name, email, password, password_confirmation, url, city, date_of_birth, role, bio, interests_id1, interests_id2, interests_id3|
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password_confirmation, city: city, date_of_birth: date_of_birth, role: role, bio: bio)
  user.remote_photo_url = url
  user.interests << Interest.find(interests_id1)
  user.interests << Interest.find(interests_id2)
  user.interests << Interest.find(interests_id3)
  user.save
end

puts 'Finished creating users'
puts 'Creating events'

event_list = [
  ["Weekly Buddy - Meetup", "2018-12-07 18:00:00", "2018-11-18 22:00:00", "Invitation for our weekly meetup. I want to catch up on you last visits", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Weekly Buddy - Meetup", "2018-12-14 18:00:00", "2018-11-25 22:00:00", "Invitation for our weekly meetup. I want to catch up on you last visits", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Weekly Buddy - Meetup", "2018-12-21 18:00:00", "2018-12-03 22:00:00", "Invitation for our weekly meetup. I want to catch up on you last visits. This will be the last time we will meet before X-Mas", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["All hands meeting", "2018-12-22 18:00:00", "2018-11-29 19:30:00", "We want to bring everyone in to talk about what we managed to achieve over the past weeks", "Neuer Kamp 30, 20357 Hamburg","1"],
  ["Caspar Christmas", "2018-12-23 18:00:00", "2018-11-25 24:00:00", "Everyone is invited to meet for a stroll over the Hamburg Christmas market", "Weihnachtsmarkt auf dem Rathausmarkt, Hamburg","1"]
]

event_list.each do |title, start, e, description, location, coordinator|
  event = Event.new(title: title, start: start, end: e, description: description, location: location, coordinator_id: coordinator)
  event.save
end
puts 'Finished creating events'
