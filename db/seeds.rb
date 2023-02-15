puts "Deleting old data..." 

Campsite.destroy_all  
User.destroy_all 
Review.destroy_all

puts "Creating seed data..." 

u1 = User.create(email: "andrew1@gmail.com", username: "andrew1", password: "password")
u2 = User.create(email: "woodsgal@aol.com", username: "woodsgal", password: "password")
u3 = User.create(email: "mtnman@gmail.com", username: "mtnman", password: "password")
u4 = User.create(email: "sammy08@aol.com", username: "hiker08", password: "password")
u5 = User.create(email: "iamjenn@hotmail.com", username: "tentboss303", password: "password")

# user
# t.string "first_name"
# t.string "last_name"
# t.string "email"
# t.string "username"
# t.string "password"
# t.integer "user_id"

c1 = Campsite.create(name: "Devil's Gulch", region: "Front Range", description: "Beautiful and close to Denver", elevation: 8532, coordinates: 20302, image: "https://i.imgur.com/gW63ZQL.jpg")
c2 = Campsite.create(name: "Elk Creek", region: "Gore Valley", description: "Good", elevation: 9365, coordinates: 98668, image: "https://i.imgur.com/9tYGUxz.jpg")
c3 = Campsite.create(name: "Black Forest", region: "San Juans", description: "Ok", elevation: 10236, coordinates: 98686, image: "https://i.imgur.com/g93xVhX.jpg")
c4 = Campsite.create(name: "Magnolia Road", region: "Pikes Peak", description: "Great", elevation: 6721, coordinates: 866, image: "https://i.imgur.com/0pJKg8G.jpg")
c5 = Campsite.create(name: "Flat Tops", region: "Front Range", description: "Fantastic", elevation: 7836, coordinates: 96986, image: "https://i.imgur.com/aZQY4A2.jpg")
c6 = Campsite.create(name: "Bear River", region: "San Juans", description: "Never again", elevation: 8910, coordinates: 89698, image: "https://i.imgur.com/k2lTTIo.jpg")
c7 = Campsite.create(name: "Chicago Lakes", region: "Gore Valley", description: "Kinda cool", elevation: 6982, coordinates: 986668, image: "https://i.imgur.com/TtobOIZ.jpg")
c8 = Campsite.create(name: "Loch Lamond", region: "Pikes Peak", description: "Maybe not", elevation: 7813, coordinates: 86886, image: "https://i.imgur.com/SkLKRus.jpg")
c9 = Campsite.create(name: "Homestake Reservoir", region: "Front Range", description: "Mehh", elevation: 8521, coordinates: 86977, image: "https://i.imgur.com/iv6lH4C.jpg")
c10 = Campsite.create(name: "Lost Lake", region: "San Juans", description: "Best ever!", elevation: 10597, coordinates: 87546, image: "https://i.imgur.com/Kdk1shY.jpg")

#Campsite
# t.string "name"
# t.string "region"
# t.text "description"
# t.integer "elevation"
# t.integer "coordinates"
# t.integer "campsite_id"

r1 = Review.create(title: "Windy but fun!", date: 060222 , content:"Beautiful but super windy!", image: "test", campsite_id: 1, user_id: 1)
r2 = Review.create(title: "My Trip", date: 102222, content: "What a great trip.", image: "", campsite_id: 10, user_id: 5)
r3 = Review.create(title: "October Backpacking", date: 100922, content: "It was such a good time.", image: "", campsite_id: 8, user_id: 3)
r4 = Review.create(title: "Too many mountain goats", date: 053122, content: "Wayyyyy too many mountain goats.", image: "", campsite_id: 2, user_id: 4)
r5 = Review.create(title: "Best Time Ever!", date: 061322, content: "Can't wait to go back to my favorite spot.", image: "", campsite_id: 6, user_id: 2)
r6 = Review.create(title: "Rainy but fun", date: 101822, content: "Would have been the perfect trip if not for the rain", image: "", campsite_id: 3, user_id: 1)
r7 = Review.create(title: "Want to go back", date: 072122, content: "I'm ready to go back tomorrow.", image: "", campsite_id: 9, user_id: 2)
r8 = Review.create(title: "Alone in the woods", date: 061122, content: "Loved being away from it all.", image: "", campsite_id: 7, user_id: 4)
r9 = Review.create(title: "Never Returning", date: 070422, content: "Three words - mud, bugs, and rain.", image: "", campsite_id: 4, user_id: 5)
r10 = Review.create(title: "Met a bear...", date: 071722, content: "Met a bear and feeling lucky to be alive!", image: "", campsite_id: 5, user_id: 3)

# review
# t.string "campsite"
# t.string "title"
# t.integer "date"
# t.string "content"
# t.string "image"
# t.integer "campsite_id"
# t.integer "user_id"

puts "✅ Done seeding!"