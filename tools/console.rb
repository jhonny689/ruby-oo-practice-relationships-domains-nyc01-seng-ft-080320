require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
##  Airbnb test sets
listing1 = Listing.new("Beirut")
listing2 = Listing.new("Paris")
listing3 = Listing.new("Dubai")
listing4 = Listing.new("Brussels")
listing5 = Listing.new("Beirut")

guest1  = Guest.new("jhonny")
guest2  = Guest.new("kain")
guest3  = Guest.new("saroosh")
guest4  = Guest.new("appa")
guest5  = Guest.new("mojo")
guest6  = Guest.new("harry")
guest7  = Guest.new("ron")

trip_toNYC = Trip.new(guest1, listing1)
trip_toNYC1 = Trip.new(guest1, listing2)
trip_toNYC2 = Trip.new(guest1, listing1)
trip_toNYC3 = Trip.new(guest4, listing1)
trip_toNYC4 = Trip.new(guest5, listing1)
trip_toNYC5 = Trip.new(guest6, listing2)
trip_toNYC6 = Trip.new(guest7, listing2)

### ImDB test sets

actor_angelina_jolie = Actor.new("Angelina Jolie")


movie_tomb_raider = Movie.new("Lara Croft: Tomb Raider", "2001")
movie_tomb_raider2 = Movie.new("Lara Croft: Tomb Raider - The Cradle of Life", "2003")

character_lara_croft = Character.new("Lara Croft", actor_angelina_jolie, movie_tomb_raider)
character_lara_croft = Character.new("Lara Croft", actor_angelina_jolie, movie_tomb_raider2)

show_schitts_creek = Show.new("schitts_creek", "2015")

episode_80_schitt_creek = Episode.new("Happy Ending", 80, show_schitts_creek)
episode_79_schitt_creek = Episode.new("Happy Ending", 79, show_schitts_creek)
episode_78_schitt_creek = Episode.new("Happy Ending", 78, show_schitts_creek)
episode_77_schitt_creek = Episode.new("Happy Ending", 77, show_schitts_creek)
episode_76_schitt_creek = Episode.new("Happy Ending", 76, show_schitts_creek)

actor_daniel_levy = Actor.new("Daniel Levi")
actor_noah_reid = Actor.new("Noah, Reid")

character_david_rose = Character.new("David Rose", actor_daniel_levy, nil, episode_80_schitt_creek)
character_patrick = Character.new("Patrick", actor_noah_reid, nil, episode_80_schitt_creek)
character_david_rose = Character.new("David Rose", actor_daniel_levy, nil, episode_79_schitt_creek)
character_patrick = Character.new("Patrick", actor_noah_reid, nil, episode_79_schitt_creek)
character_david_rose = Character.new("David Rose", actor_daniel_levy, nil, episode_78_schitt_creek)
character_patrick = Character.new("Patrick", actor_noah_reid, nil, episode_78_schitt_creek)
character_david_rose = Character.new("David Rose", actor_daniel_levy, nil, episode_77_schitt_creek)
character_patrick = Character.new("Patrick", actor_noah_reid, nil, episode_77_schitt_creek)
character_david_rose = Character.new("David Rose", actor_daniel_levy, nil, episode_76_schitt_creek)
character_patrick = Character.new("Patrick", actor_noah_reid, nil, episode_76_schitt_creek)

movie_happiest_season = Movie.new("Happiest Season", "2020")

character_john = Character.new("John", actor_daniel_levy, movie_happiest_season)


## gym test sets section

location_dt_bklyn = Location.new("Downtown Brooklyn")
location_williamsburg_bklyn = Location.new("Williamsburg Brooklyn")
location_fidi_nyc = Location.new("FiDi NYC")
location_westvillage_nyc = Location.new("West village NYC")

trainer_muscle1 = Trainer.new("Muscle 1")
trainer_muscle2 = Trainer.new("Muscle 2")
trainer_muscle3 = Trainer.new("Muscle 3")
trainer_muscle4 = Trainer.new("Muscle 4")

client_jhonny = Client.new("Jhonny", trainer_muscle1)
client_bill = Client.new("Bill", trainer_muscle1)
client_omar = Client.new("Omar", trainer_muscle2)
client_sam = Client.new("Same", trainer_muscle3)

client_jhonny.train(location_dt_bklyn)
client_jhonny.train(location_westvillage_nyc)

client_bill.train(location_dt_bklyn)

client_omar.train(location_fidi_nyc)
client_sam.train(location_williamsburg_bklyn)

## Crowdfunding test sets

user_1 = User.new("user 1")
user_2 = User.new("user 2")
user_3 = User.new("user 3")
user_4 = User.new("user 4")
user_5 = User.new("user 5")

project1 = user_1.create_project("project 1", 5000)
project2 = user_2.create_project("project 2", 10000)
project3 = user_3.create_project("project 3", 5000)

user_3.pledge_project(project1, 1000)
user_4.pledge_project(project1, 3500)
user_5.pledge_project(project1, 700)

user_3.pledge_project(project2, 1000)
user_4.pledge_project(project2, 3000)
user_5.pledge_project(project2, 1000)

Pry.start
