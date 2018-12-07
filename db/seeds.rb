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

american_football = Interest.find_by(variant: "American Football")

puts 'Creating users'




kaylin = User.create!({ first_name: "Kaylin", last_name: "Bittner", email: "kaylin@bittner.de", password: "KaylinBittner", password_confirmation: "KaylinBittner", city: "Berlin", date_of_birth: "21-05-1990", role: "buddy", bio: "I am passionate about futball. I love practising sports but also watching them and discussing the results with friends. I also like watching movies,hanging out and having fun." })
kaylin.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/kaylinbittner"
kaylin.save
football = Interest.find_by(variant: "Football")
fiction = Interest.find_by(variant: "Historical Fiction")
baseball = Interest.find_by(variant: "Baseball")

UserInterest.create!(user: kaylin, interest: football)
UserInterest.create!(user: kaylin, interest: fiction)
UserInterest.create!(user: kaylin, interest: baseball)





elena = User.create!({ first_name: "Elena", last_name: "Tamayo", email: "elena@tamayo.com", password: "ElenaTamayo", password_confirmation: "ElenaTamayo", city: "Berlin", date_of_birth: "18-04-1995", role: "buddy", bio: "I am passionate about futball. I love practising sports but also watching them and discussing the results with friends. I also like watching movies,hanging out and having fun." })
elena.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/elenatamayo"
elena.save
football = Interest.find_by(variant: "Football")
fiction = Interest.find_by(variant: "Historical Fiction")
baseball = Interest.find_by(variant: "Baseball")

UserInterest.create!(user: elena, interest: football)
UserInterest.create!(user: elena, interest: fiction)
UserInterest.create!(user: elena, interest: baseball)





fritz = User.create!({ first_name: "Fritz", last_name: "Meyer", email: "fritz@meyer.com", password: "FritzMeyer", password_confirmation: "FritzMeyer", city: "Berlin", date_of_birth: "04-02-2000", role: "coordinator", bio: "I am passionate about futball. I love practising sports but also watching them and discussing the results with friends. I also like watching movies,hanging out and having fun." })
fritz.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/meyerfr"
fritz.save

football = Interest.find_by(variant: "Football")
fiction = Interest.find_by(variant: "Historical Fiction")
baseball = Interest.find_by(variant: "Baseball")

UserInterest.create!(user: fritz, interest: football)
UserInterest.create!(user: fritz, interest: fiction)
UserInterest.create!(user: fritz, interest: baseball)





brayan = User.create!({ first_name: "Brayan", last_name: "Rogers", email: "brayan@rogers.com", password: "BrayanRogers", password_confirmation: "BrayanRogers", city: "Berlin", date_of_birth: "02-11-1992", role: "patient", bio: "I like sports and I especially love football. I love playing football but also watching it and spending hours talking with friends about the best games, teams and players. I also enjoy playing golf, watching movies and hanging out." })
brayan.remote_photo_url = "https://res.cloudinary.com/dqssam2go/image/upload/v1544106931/images_5.jpg"
brayan.save

football = Interest.find_by(variant: "Football")
golf = Interest.find_by(variant: "Golf")
comedy = Interest.find_by(variant: "Comedy")

UserInterest.create!(user: brayan, interest: football)
UserInterest.create!(user: brayan, interest: golf)
UserInterest.create!(user: brayan, interest: comedy)





trond = User.create!({ first_name: "Trond", last_name: "Stern", email: "trond@stern.com", password: "TrondStern", password_confirmation: "TrondStern", city: "Berlin", date_of_birth: "31-08-1992", role: "buddy", bio: "I am passionate about football but I also enjoy playing golf. I love watching football games and in general I enjoy talking about sports." })
trond.remote_photo_url = "https://kitt.lewagon.com/placeholder/users/TheTresckow"
trond.save

football= Interest.find_by(variant: "Football")
adventure = Interest.find_by(variant: "Adventure")
golf = Interest.find_by(variant: "Golf")

UserInterest.create!(user: trond, interest: football)
UserInterest.create!(user: trond, interest: adventure)
UserInterest.create!(user: trond, interest: golf)






puts 'Finished creating users'
puts 'Creating events'

event_list = [
  ["Weekly Buddy - Meetup", "23-11-2018 18:00:00", "23-11-2018  20:00:00", "Hello guys I want to invite you to our weekly meetup. I want to catch up on your last visits.I hope you can come", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Weekly Buddy - Meetup", "30-11-2018 18:00:00", "30-11-2018 20:00:00", "Hello guys I want to invite you to our weekly meetup. I want to catch up on your last visits" "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Weekly Buddy - Meetup", "07-12-2018 18:00:00", "07-12-2018 20:00:00", "Hello guys I want to invite you to our weekly meetup. I want to catch up on your last visits. Looking forward to meet you", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Cinema Meetup", "08-12-2018 18:00:00","08-12-2018 21:00:00", "Hello guys, I would like to invite you to watch the film Dieses bescheuerte Herz  all together and meet new people. I hope you can all come", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Caspar Christmas Market Stroll", "09-12-2018 15:00:00", "09-12-2018 18:00:00", "Hello guys, I am exited to invite you for a stroll over the Hamburg Christmas market. Looking forward to see you all there", "Weihnachtsmarkt auf dem Rathausmarkt, Hamburg","1"],
  ["Weekly Buddy - Meetup", "14-12-2018 18:00:00", "14-12-2018 20:00:00", "Hello guys I want to invite you to our weekly meetup. I want to catch up on your last visits. I hope you can come", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["All hands meeting", "04-12-2018 18:00:00", "04-12-2018 20:30:00", "Hello guys I would like to invite you to our buddy closing event for this year. We want to bring everyone in to talk about what we managed to achieve over the past weeks. See you guys there!", "Neuer Kamp 30, 20357 Hamburg","1"]
]


event_list.each do |mini_array|
  event = Event.new(title: mini_array[0], start: mini_array[1], end: mini_array[2], description: mini_array[3], location: mini_array[4], coordinator: User.find_by(role: 'coordinator' ))
  event.save!
end
puts 'Finished creating events'

x = User.last
events = Event.all
events.each do |event|
  UserEvent.create!(user: x, event: event)
end

Conversation.create(sender_id: trond.id, recipient_id: brayan.id)
