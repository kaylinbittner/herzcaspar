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
puts 'Destroying Users'
User.destroy_all
puts 'Database clean'
puts 'Creating users'
user_list = [
  ["Kaylin", "Bittner", "kaylin@bittner.de", "KaylinBittner", "KaylinBittner", "https://kitt.lewagon.com/placeholder/users/kaylinbittner"],
  ["Elena", "Tamayo", "elena@tamayo.com", "ElenaTamayo", "ElenaTamayo", "https://kitt.lewagon.com/placeholder/users/elenatamayo"],
  ["Fritz", "Meyer", "fritz@meyer.com", "FritzMeyer", "FritzMeyer", "https://kitt.lewagon.com/placeholder/users/meyerfr"]
]

user_list.each do |first_name, last_name, email, password, password_confirmation, url|
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password_confirmation)
  user.remote_photo_url = url
  user.save
end

puts 'Finished creating users'
puts 'Creating interests'

movie_photo = "https://res.cloudinary.com/dqssam2go/image/upload/v1543745062/movies.jpg"
books_photo = "https://res.cloudinary.com/dqssam2go/image/upload/v1543744826/books.jpg"
sport_photo = "https://res.cloudinary.com/dqssam2go/image/upload/v1543745971/vytautas-dranginis-588110-unsplash.jpg"

interest_list = {
  "sport" => [["American Football", sport_photo], ["Archery", sport_photo], ["Badminton", sport_photo], ["Baseball", "https://res.cloudinary.com/dqssam2go/image/upload/v1543744868/baseball.jpg"], ["Basketball", "https://res.cloudinary.com/dqssam2go/image/upload/v1543744869/basketball.jpg"], ["Bowling", "https://res.cloudinary.com/dqssam2go/image/upload/v1543745043/bowling.jpg"], ["Boxing", sport_photo], ["Cricket", sport_photo], ["Football", sport_photo], ["Golf", sport_photo], ["Gymnastics", sport_photo], ["Handball", sport_photo], ["Hockey", sport_photo], ["Ice Hockey", sport_photo], ["Rowing", sport_photo], ["Rugby", sport_photo], ["Sailing", sport_photo], ["Shooting", sport_photo], ["Squash", sport_photo], ["Swimming", sport_photo], ["Table Tennis", sport_photo], ["Tennis", sport_photo], ["Volleyball", sport_photo], ["Weightlifting", sport_photo], ["Winter Sports", sport_photo], ["Wrestling", sport_photo],  ["Other - Not Listed", sport_photo]],
  "movies" => [["Action", movie_photo], ["Adventure", movie_photo], ["Comedy", movie_photo], ["Crime", movie_photo], ["Drama", movie_photo], ["Fantasy", movie_photo], ["Historical", movie_photo], ["Historical Fiction", movie_photo], ["Horror", movie_photo], ["Mystery", movie_photo], ["Political", movie_photo], ["Romance", movie_photo], ["Saga", movie_photo], ["Satire", movie_photo], ["Science Fiction", movie_photo], ["Thriller", movie_photo], ["Western", movie_photo], ["Romantic Comedy", movie_photo], ["Animation", movie_photo], ["Other - Not Listed", movie_photo]],
  "books" => [["Action", books_photo], ["Adventure", books_photo, books_photo], ["Comedy", books_photo, books_photo], ["Crime", books_photo, books_photo], ["Drama", books_photo, books_photo], ["Fantasy", books_photo, books_photo], ["Historical", books_photo], ["Historical Fiction", books_photo], ["Horror", books_photo], ["Mystery", books_photo], ["Political", books_photo], ["Romance", books_photo], ["Saga", books_photo], ["Satire", books_photo], ["Science Fiction", books_photo], ["Thriller", books_photo], ["Western", books_photo], ["Romantic Comedy", books_photo], ["Other - Not Listed", books_photo]],
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


puts 'Creating events'

event_list = [
  ["Weekly Buddy - Meetup", "2018-11-18 18:00:00", "2018-11-18 22:00:00", "Invitation for our weekly meetup. I want to catch up on you last visits", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Weekly Buddy - Meetup", "2018-11-25 18:00:00", "2018-11-25 22:00:00", "Invitation for our weekly meetup. I want to catch up on you last visits", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["Weekly Buddy - Meetup", "2018-12-03 18:00:00", "2018-12-03 22:00:00", "Invitation for our weekly meetup. I want to catch up on you last visits. This will be the last time we will meet before X-Mas", "Forsmannstrasse 7, 20095 Hamburg","1"],
  ["All hands meeting", "2018-11-29 18:00:00", "2018-11-29 19:30:00", "We want to bring everyone in to talk about what we managed to achieve over the past weeks", "Neuer Kamp 30, 20357 Hamburg","1"],
  ["Caspar Christmas", "2018-12-01 18:00:00", "2018-11-25 24:00:00", "Everyone is invited to meet for a stroll over the Hamburg Christmas market", "Weihnachtsmarkt auf dem Rathausmarkt, Hamburg","1"]
]

event_list.each do |title, start, e, description, location, coordinator|
  event = Event.new(title: title, start: start, end: e, description: description, location: location, coordinator_id: coordinator)
  event.save
end
puts 'Finished creating events'
