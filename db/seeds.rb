puts "Deleting old data..." 

Campsite.destroy_all  
User.destroy_all 
Review.destroy_all

puts "Creating seed data..." 

u1 = User.create(first_name: "Andrew", last_name: "Owens", email: "andrew1@gmail.com", username: "andrew1", password: "password", user_id: 1)

# user
# t.string "first_name"
# t.string "last_name"
# t.string "email"
# t.string "username"
# t.string "password"
# t.integer "user_id"

c1 = Campsite.create(name: "Devil's Gulch", region: "Front Range", description: "Beautiful and close to Denver", elevation: 8532, coordinates: 20302, campsite_id: 2)
# c2 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c3 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c4 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c5 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c6 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c7 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c8 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c9 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )
# c10 = Campsite.create(name: , region: , description: , elevation: , coordinates: , campsite_id: )

#Campsite
# t.string "name"
# t.string "region"
# t.text "description"
# t.integer "elevation"
# t.integer "coordinates"
# t.integer "campsite_id"

r1 = Review.create(campsite: "Devil's Gulch", title: "Windy but fun!", date: 060222 , content:"Beautiful but super windy!", image: "test", campsite_id: 1, user_id: 1)
# r2 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r3 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r4 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r5 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r6 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r7 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r8 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r9 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )
# r10 = Review.create(campsite: , title: , date: , content:, image:, campsite_id: , user_id: )

# review
# t.string "campsite"
# t.string "title"
# t.integer "date"
# t.string "content"
# t.string "image"
# t.integer "campsite_id"
# t.integer "user_id"

puts "✅ Done seeding!"