# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Destroying UserEvents, Events, Users'
UserEvent.destroy_all
Event.destroy_all
User.destroy_all
puts 'Database clean'
puts 'Creating users'
user_list = [
  ["Kaylin", "Bittner", "kaylin@bittner.com", "KaylinBittner", "KaylinBittner", "https://kitt.lewagon.com/placeholder/users/kaylinbittner"],
  ["Elena", "Tamayo", "elena@tamayo.com", "ElenaTamayo", "ElenaTamayo", "https://kitt.lewagon.com/placeholder/users/elenatamayo"],
  ["Fritz", "Meyer", "fritz@meyer.com", "FritzMeyer", "FritzMeyer", "https://kitt.lewagon.com/placeholder/users/meyerfr"]
]

user_list.each do |first_name, last_name, email, password, password_confirmation, url|
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password_confirmation)
  user.remote_photo_url = url
  user.save
end
puts 'Finished creating users'

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
