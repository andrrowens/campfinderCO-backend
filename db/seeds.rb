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

c1 = Campsite.create(name: "Devil's Gulch", region: "Front Range", description: "Beautiful and close to Denver. Terrain varies from open meadows to dense forest so it's easy to find a site that fits your needs. Will generally get busy on the weekend and holidays.", elevation: "8,532", coordinates: "39.352976862570735, -106.63807874123233", image: "https://i.imgur.com/gW63ZQL.jpg")

c2 = Campsite.create(name: "Elk Creek", region: "Gore Valley", description: "The Elk Creek area offers plenty of secluded campsites as well as several streams that are great for fly fishing. Expect lots of ATVs and dirtbikes.", elevation: "9,365", coordinates: "39.306241359668924, -106.68238660830366", image: "https://i.imgur.com/9tYGUxz.jpg")
c3 = Campsite.create(name: "Black Forest", region: "San Juans", description: "Despite its remoteness, Black Forest is well worth the trip and will reward the intrepid with beautiful views of the San Juans and lots of secluded campsites to choose from.", elevation: "10,236", coordinates: "38.13832648167785, -107.93584617768083", image: "https://i.imgur.com/g93xVhX.jpg")
c4 = Campsite.create(name: "Magnolia Road", region: "Pikes Peak", description: "A popular dispersed camping area for Colorado Springs residents. Lots of motorized offroad vehicle activity but peace and quiet can be found if you know where to look.", elevation: "6,721", coordinates: "39.3633908855199, -107.48471153113637", image: "https://i.imgur.com/0pJKg8G.jpg")
c5 = Campsite.create(name: "Flat Tops", region: "Front Range", description: "Popular with backpackers and home of the infamous Zerkle Circle route, the Flat Tops are one of the state's classic outdoor areas.", elevation: "7836", coordinates: "39.41631212801024, -107.39609579699372", image: "https://i.imgur.com/aZQY4A2.jpg")
c6 = Campsite.create(name: "Bear River", region: "San Juans", description: "Close to absolutely nothinng but absolutely worth the effort, you won't be disappointed if you decide to make the trip to Bear River", elevation: "8,910", coordinates: "40.25143473308496, -107.13427644189989", image: "https://i.imgur.com/k2lTTIo.jpg")
c7 = Campsite.create(name: "Chicago Lakes", region: "Gore Valley", description: "The Chicago Lakes area is home to tons of wildlife including moose, elk, bear, and mountain lion. Sightings are common but be sure to safely secure your belongings and take necessary precautions.", elevation: "6,982", coordinates: "40.57039859820734, -105.96213194592207", image: "https://i.imgur.com/TtobOIZ.jpg")
c8 = Campsite.create(name: "Loch Lamond", region: "Pikes Peak", description: "A true hidden gem - Loch Lamond features a cascading waterfall going into the alpine lake. Swimming is a popular activity for the brave but be mindful of the possibility of hypothermia even in the summer.", elevation: "7,813", coordinates: "38.30920334220223, -106.46160240686557", image: "https://i.imgur.com/SkLKRus.jpg")
c9 = Campsite.create(name: "Homestake Reservoir", region: "Front Range", description: "The jeep trail up to Homestake Reservoir from Hwy 9 is notoriously sketchy in the best of times but you will be rewarded with spectacular views if you make it. High-clearance 4x4 required.", elevation: "8,521", coordinates: "38.068594969280205, -106.40118258813195", image: "https://i.imgur.com/iv6lH4C.jpg")
c10 = Campsite.create(name: "Lost Lake", region: "San Juans", description: "Lost Lake is absolutely gorgeous but don't let the name fool you. It gets a lot of traffic from day hikers during holidays and weekends and may best be visited during the week or offseason. ", elevation: "10,597", coordinates: "39.43809156540901, -107.50887926491522", image: "https://i.imgur.com/Kdk1shY.jpg")

#Campsite
# t.string "name"
# t.string "region"
# t.text "description"
# t.integer "elevation"
# t.integer "coordinates"
# t.integer "campsite_id"

r1 = Review.create(title: "Always windy at Devil's Gulch!", date: "06/02/22", content:"This place would be perfect if it wasn't for the freaking non-stop wind. Luckily we found a semi-secluded spot protected by a grove of aspens. Lots of bears in the area so stay alert while hiking and store your food properly.", image: "https://freecampsites.net/wp-content/uploads/2018/06/20180618_101550-800x450.jpg", campsite_id: 1, user_id: 1)
r2 = Review.create(title: "Lost Lake Madness", date: "10/22/22", content: "It WAS a fun backpacking trip. It was NOT a secluded or 'lost' lake. Tons of people hiking around and fishing in the lake. Kind of surprising for this late in the year.", image: "https://freecampsites.net/wp-content/uploads/2017/11/4031D4EC-12B9-4D32-BA1B-8EA3831E137B-450x600.jpeg", campsite_id: 10, user_id: 5)
r3 = Review.create(title: "October Backpacking near Loch Lamond", date: "10/09/22", content: "It was honestly such a good time. The weather was perfect even though it was almost mid-October and we were at nearly 8,000 feet.", image: "https://freecampsites.net/wp-content/uploads/2020/07/6B34865E-081E-4CFC-8D12-7832D8551A8A-800x600.jpeg", campsite_id: 8, user_id: 3)
r4 = Review.create(title: "Too many mountain goats at Elk Creek", date: "05/31/22", content: "Wayyyyy too many mountain goats. Saw no elk.", image: "https://freecampsites.net/wp-content/uploads/2018/07/964D4C70-B0DF-42A2-9F81-C10713FF5DAF-800x600.jpeg", campsite_id: 2, user_id: 4)
r5 = Review.create(title: "Best Time Ever at Bear River!", date: "06/13/22", content: "It took us forever to get there and we did get lost once but Bear River was so worth it. Probably one of my favorite spots in the state and I can't wait to go back.", image: "https://freecampsites.net/wp-content/uploads/2020/07/5E0FA740-8D18-463B-B942-5D61560D664C-800x600.jpeg", campsite_id: 6, user_id: 2)
r6 = Review.create(title: "Rainy but fun at Black Forest", date: "10/18/22", content: "Would have been the perfect trip if not for the rain. Cool area.", image: "https://freecampsites.net/wp-content/uploads/2020/09/IMG_20200914_202529-450x600.jpg", campsite_id: 3, user_id: 1)
r7 = Review.create(title: "Homestake Reservoir almost killed my truck", date: "07/21/22", content: "Take heed of the ample warnings you will find on sites like this one - the road up to Homestake will snap your vehicle in half like a toothpick and then laugh about it. Beautiful views though...", image: "https://freecampsites.net/wp-content/uploads/2019/10/20190928_115407-800x600.jpg", campsite_id: 9, user_id: 2)
r8 = Review.create(title: "Late Season Snow at Chicago Lakes", date: "06/11/22", content: "Seemed like I was the only soul around at Chicago Lakes. Loved being away from it all and think I made the right choice going up during the work week. Will definitely be returning. Hopefully without the June snow.", image: "https://freecampsites.net/wp-content/uploads/2019/06/IMG_20190622_075218-800x600.jpg", campsite_id: 7, user_id: 4)
r9 = Review.create(title: "Never Returning to Magnolia Rd", date: "07/04/22", content: "Three words - mud, bugs, and TRASH. Hate to see it...", image: "https://freecampsites.net/wp-content/uploads/2016/08/Screen-Shot-2016-08-24-at-1.08.25-PM.png", campsite_id: 4, user_id: 5)
r10 = Review.create(title: "Met a bear in the Flat Tops", date: "07/17/22", content: "Met a bear and feeling lucky to be alive! Definitely going to be more careful with how I store my food.", image: "https://freecampsites.net/wp-content/uploads/2018/07/IMG_7448-800x600.jpg", campsite_id: 5, user_id: 3)

# review
# t.string "campsite"
# t.string "title"
# t.integer "date"
# t.string "content"
# t.string "image"
# t.integer "campsite_id"
# t.integer "user_id"

puts "✅ Done seeding!"