require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  # Users
  User.destroy_all
  user1 = User.create!(username: "darrenyong", email: "darren@appacademy.io", password: "password")
  user2 = User.create!(username: "gradyzhu", email: "grady@appacademy.io", password: "password")
  user3 = User.create!(username: "deanlacap", email: "dean@appacademy.io", password: "password")
  user4 = User.create!(username: "josephpark", email: "joseph@appacademy.io", password: "password")
  user5 = User.create!(username: "brandonkwan", email: "brandon@appacademy.io", password: "password")
  user6 = User.create!(username: "katchu", email: "kathryn@appacademy.io", password: "password")
  user7 = User.create!(username: "brianchan", email: "brian@appacademy.io", password: "password")
  user8 = User.create!(username: "ashleyyip", email: "ashley@appacademy.io", password: "password")
  user9 = User.create!(username: "demo", email: "demo@appacademy.io", password: "password")

  # Photos
  Photo.destroy_all
  # Photo Creation
    # Darren id=1
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/akihabaraShop.jpg", :raise_on_failure => true, :timeout => 1)
    photo1 = Photo.create!(title: "Akihabara", description: "Akihabara Shop Owner", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/shinden.jpg", :raise_on_failsure => true, :timeout => 1)
    photo2 = Photo.create!(title: "The Shinden", description: "The Shinden is a shrine to the divine spirits", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/island.jpg", :raise_on_failsure => true, :timeout => 1)
    photo3 = Photo.create!(title: "The Island", description: "A random island I found when I was wandering China", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/spaceX.jpg", :raise_on_failsure => true, :timeout => 1)
    photo4 = Photo.create!(title: "Insight", description: "NASA's Mars InSight Lander launch", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/theBund.jpg", :raise_on_failsure => true, :timeout => 1)
    photo5 = Photo.create!(title: "The Bund", description: "The Bund is a famous strip in Shanghai", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/autumnRoad.jpg", :raise_on_failsure => true, :timeout => 1)
    photo6 = Photo.create!(title: "Autumn Road", description: "A windy road during autumn", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/barcelonaSpice.jpg", :raise_on_failsure => true, :timeout => 1)
    photo48 = Photo.create!(title: "Boqueria Market", description: "I visited Barcelona last summer and took a picture of spices", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    
    photo1.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/akihabaraShop.jpg"), filename: "akihabaraShop.jpg")
    photo2.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/shinden.jpg"), filename: "theShinden.jpg")
    photo3.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/island.jpg"), filename: "island.jpg")
    photo4.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/spaceX.jpg"), filename: "insight.jpg")
    photo5.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/theBund.jpg"), filename: "theBund.jpg")
    photo6.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/autumnRoad.jpg"), filename: "autumnRoad.jpg")
    photo48.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/barcelonaSpice.jpg"), filename: "barcelonaSpice.jpg")
    
    
    # Grady id=2
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/subway.jpg", :raise_on_failure => true, :timeout => 1)
    photo7 = Photo.create!(title: "Subway", description: "I took a picture in the subway", uploader_id: user2.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/fireHair.jpg", :raise_on_failure => true, :timeout => 1)
    photo8 = Photo.create!(title: "Fire Hair", description: "My friend with hair like fire", uploader_id: user2.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/ct6yjlzvtdg01.jpg", :raise_on_failure => true, :timeout => 1)
    photo9 = Photo.create!(title: "Horizon", description: "A picture I took of the horizon. I forget where it was", uploader_id: user2.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/lakeOberon.jpg", :raise_on_failure => true, :timeout => 1)
    photo10 = Photo.create!(title: "Lake Oberon", description: "I took a picture of myself overlooking Lake Oberon", uploader_id: user2.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/matchingColors.jpg", :raise_on_failure => true, :timeout => 1)
    photo46 = Photo.create!(title: "Matching", description: "I was walking down the street and noticed there was some odd color matching", uploader_id: user2.id, width: photoSize[0], height: photoSize[1])
    
    photo7.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/subway.jpg"), filename: "subway.jpg")
    photo8.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/fireHair.jpg"), filename: "fireHair.jpg")
    photo9.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/ct6yjlzvtdg01.jpg"), filename: "horizon.jpg")
    photo10.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/lakeOberon.jpg"), filename: "lakeOberon.jpg")
    photo46.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/matchingColors.jpg"), filename: "matchingColors.jpg")

  
    # Dean id=3
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/barcelona.jpg", :raise_on_failure => true, :timeout => 1)
    photo11 = Photo.create!(title: "Barcelona", description: "Golden hour in Barcelona", uploader_id: user3.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/chicagoMOMA.jpg", :raise_on_failure => true, :timeout => 1)
    photo12 = Photo.create!(title: "Chicago MOMA", description: "My two friends in the Chicago MOMA", uploader_id: user3.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/houseReflection.jpg", :raise_on_failure => true, :timeout => 1)
    photo13 = Photo.create!(title: "Reflection", description: "This is a picture of a lake reflecting some houses", uploader_id: user3.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/lombardStreet.jpg", :raise_on_failure => true, :timeout => 1)
    photo14 = Photo.create!(title: "Lombard Street", description: "One of the most famous streets in SF", uploader_id: user3.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/newYork.jpg", :raise_on_failure => true, :timeout => 1)
    photo15 = Photo.create!(title: "New York City", description: "I took a picture of New York", uploader_id: user3.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/bladeRunner.jpg", :raise_on_failure => true, :timeout => 1)
    photo40 = Photo.create!(title: "Blade Runner", description: "I took a woman with some Blade Runner vibes", uploader_id: user3.id, width: photoSize[0], height: photoSize[1])


    photo11.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/barcelona.jpg"), filename: "barcelona.jpg")
    photo12.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/chicagoMOMA.jpg"), filename: "chicagoMOMA.jpg")
    photo13.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/houseReflection.jpg"), filename: "houseReflection.jpg")
    photo14.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/lombardStreet.jpg"), filename: "lombardStreet.jpg")
    photo15.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/newYork.jpg"), filename: "newYork.jpg")
    photo40.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/bladeRunner.jpg"), filename: "bladeRunner.jpg")
    
    # Joseph id=4
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/bayBridge.jpg", :raise_on_failure => true, :timeout => 1)
    photo16 = Photo.create!(title: "Bay Bridge", description: "The bay bridge through a fence", uploader_id: user4.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/tidalPool.jpg", :raise_on_failure => true, :timeout => 1)
    photo17 = Photo.create!(title: "Tidal Pool", description: "I took a picture of a tidal pool in California", uploader_id: user4.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/chicagoSkyline.jpg", :raise_on_failure => true, :timeout => 1)
    photo18 = Photo.create!(title: "Chicago Skyline", description: "A picture of the Chicago Skyline", uploader_id: user4.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/mountainLake.jpg", :raise_on_failure => true, :timeout => 1)
    photo19 = Photo.create!(title: "Lake", description: "I took a picture of my friend standing by a lake", uploader_id: user4.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/sydneyAus.jpg", :raise_on_failure => true, :timeout => 1)
    photo20 = Photo.create!(title: "Sydney, Australia", description: "I love taking pictures of city skylines", uploader_id: user4.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/wanakaNZ.jpg", :raise_on_failure => true, :timeout => 1)
    photo41 = Photo.create!(title: "Wanaka, New Zealand", description: "I took a picture of a lone tree in Wanaka, New Zealand", uploader_id: user4.id, width: photoSize[0], height: photoSize[1])

    photo16.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/bayBridge.jpg"), filename: "bayBridge.jpg")    
    photo17.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/tidalPool.jpg"), filename: "tidalPool.jpg")    
    photo18.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/chicagoSkyline.jpg"), filename: "chicagoSkyline.jpg")    
    photo19.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/mountainLake.jpg"), filename: "mountainLake.jpg")    
    photo20.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/sydneyAus.jpg"), filename: "sydneyAustralia.jpg")    
    photo41.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/wanakaNZ.jpg"), filename: "wanakaNZ.jpg")    
    
    
    # Brandon id=5
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/raceRain.jpg", :raise_on_failure => true, :timeout => 1)
    photo22 = Photo.create!(title: "Racecar", description: "A picture of a racecar in the rain", uploader_id: user5.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/lighthouse.jpg", :raise_on_failure => true, :timeout => 1)
    photo23 = Photo.create!(title: "Lighthouse", description: "", uploader_id: user5.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/stopSign.jpg", :raise_on_failure => true, :timeout => 1)
    photo24 = Photo.create!(title: "Stop once in a while", description: "I was driving during golden hour and thought this would be a nice picture", uploader_id: user5.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/tokyoMan.jpg", :raise_on_failure => true, :timeout => 1)
    photo42 = Photo.create!(title: "Lone man", description: "I took a picture of a man crossing the street in Tokyo", uploader_id: user5.id, width: photoSize[0], height: photoSize[1])
    
    photo22.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/raceRain.jpg"), filename: "raceRain.jpg")
    photo23.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/lighthouse.jpg"), filename: "lighthouse.jpg")
    photo24.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/stopSign.jpg"), filename: "stopSign.jpg")
    photo42.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/tokyoMan.jpg"), filename: "tokyoMan.jpg")
    

    # Kathryn id=6
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/boatOnLake.jpg", :raise_on_failure => true, :timeout => 1)
    photo25 = Photo.create!(title: "Boat on a Lake", description: "A boat in the middle of a lake", uploader_id: user6.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/japanInterstate.jpg", :raise_on_failure => true, :timeout => 1)
    photo26 = Photo.create!(title: "Japanese Interstate", description: "An interstate in Japan", uploader_id: user6.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/japaneseAlley.jpg", :raise_on_failure => true, :timeout => 1)
    photo27 = Photo.create!(title: "Japanese Alleyway", description: "I love the architecture in Japan", uploader_id: user6.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/mountainReflection.jpg", :raise_on_failure => true, :timeout => 1)
    photo28 = Photo.create!(title: "", description: "I wasn't sure what to call this one", uploader_id: user6.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/rockNorway.jpg", :raise_on_failure => true, :timeout => 1)
    photo29 = Photo.create!(title: "Norway", description: "I took a picture of a rock in Norway", uploader_id: user6.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/treeHaze.jpg", :raise_on_failure => true, :timeout => 1)
    photo43 = Photo.create!(title: "Haze", description: "I took a picture of a tree through some buildings and morning haze", uploader_id: user6.id, width: photoSize[0], height: photoSize[1])
    
    photo25.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/boatOnLake.jpg"), filename: "lakeBoat.jpg")    
    photo26.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/japanInterstate.jpg"), filename: "japaneseInterstate.jpg")    
    photo27.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/japaneseAlley.jpg"), filename: "japaneseAlley.jpg")    
    photo28.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/mountainReflection.jpg"), filename: "mountainReflection.jpg")    
    photo29.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/rockNorway.jpg"), filename: "norwayRock.jpg")    
    photo43.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/treeHaze.jpg"), filename: "treeHaze.jpg")    
    
    # Brian id=7
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/bostonLibrary.jpg", :raise_on_failure => true, :timeout => 1)
    photo30 = Photo.create!(title: "Boston Library", description: "People in the library", uploader_id: user7.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/seattle25.jpg", :raise_on_failure => true, :timeout => 1)
    photo31 = Photo.create!(title: "Seattle 25", description: "25 pictures of Seattle stitched into 1", uploader_id: user7.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/forestOverview.jpg", :raise_on_failure => true, :timeout => 1)
    photo32 = Photo.create!(title: "Forest", description: "I was able to play with my drone and grab this picture", uploader_id: user7.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/statueOfLiberty.jpg", :raise_on_failure => true, :timeout => 1)
    photo33 = Photo.create!(title: "Liberty", description: "I took a helicopter tour in New York and was able to grab this pic", uploader_id: user7.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/stoneBarrier.jpg", :raise_on_failure => true, :timeout => 1)
    photo34 = Photo.create!(title: "Barriers", description: "A random stone barrier I found", uploader_id: user7.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/manInMask.jpg", :raise_on_failure => true, :timeout => 1)
    photo44 = Photo.create!(title: "Masky Haze", description: "I met a man in a mask and I decided to take a picture of him", uploader_id: user7.id, width: photoSize[0], height: photoSize[1])
    
    photo30.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/bostonLibrary.jpg"), filename: "bostonLibrary.jpg")    
    photo31.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/seattle25.jpg"), filename: "seattle25.jpg")    
    photo32.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/forestOverview.jpg"), filename: "forestOverview.jpg")    
    photo33.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/statueOfLiberty.jpg"), filename: "statueOfLiberty.jpg")    
    photo34.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/stoneBarrier.jpg"), filename: "stoneBarrier.jpg")    
    photo44.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/manInMask.jpg"), filename: "manInMask.jpg")    
    
    # Ashley id=8
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/planeNYC.jpg", :raise_on_failure => true, :timeout => 1)
    photo35 = Photo.create!(title: "New York City", description: "A plane departing New York City", uploader_id: user8.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/japaneseWaterfall.jpg", :raise_on_failure => true, :timeout => 1)
    photo36 = Photo.create!(title: "Waterfall", description: "I took a picture of a waterfall in Japan", uploader_id: user8.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/goldenGate.jpg", :raise_on_failure => true, :timeout => 1)
    photo37 = Photo.create!(title: "Golden Gate Bridge", description: "The sunset on the Golden Gate Bridge", uploader_id: user8.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/greatWall.jpg", :raise_on_failure => true, :timeout => 1)
    photo38 = Photo.create!(title: "The Great Wall", description: "I was walking the Great Wall when it was cloudy", uploader_id: user8.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/veniceRiver.jpg", :raise_on_failure => true, :timeout => 1)
    photo39 = Photo.create!(title: "River in Venice", description: "", uploader_id: user8.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/baganMyanmar.jpg", :raise_on_failure => true, :timeout => 1)
    photo45 = Photo.create!(title: "Bagan", description: "A panorama I took in Bagan, Myanmar", uploader_id: user8.id, width: photoSize[0], height: photoSize[1])
    
    photo35.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/planeNYC.jpg"), filename: "planeNYC.jpg") 
    photo36.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/japaneseWaterfall.jpg"), filename: "japaneseWaterfall.jpg") 
    photo37.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/goldenGate.jpg"), filename: "goldenGateSunset.jpg") 
    photo38.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/greatWall.jpg"), filename: "greatWall.jpg") 
    photo39.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/veniceRiver.jpg"), filename: "veniceRiver.jpg") 
    photo45.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/baganMyanmar.jpg"), filename: "baganMyanmar.jpg") 
    
    # Easter eggs
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/joeLam.jpg", :raise_on_failure => true, :timeout => 1)
    photo21 = Photo.create!(title: "Lexus IS", description: "My friend Joe's Lexus IS", uploader_id: user5.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/myIS.jpg", :raise_on_failure => true, :timeout => 1)
    photo47 = Photo.create!(title: "Lexus IS", description: "My friend Darren's Lexus IS", uploader_id: user5.id, width: photoSize[0], height: photoSize[1])
    photoSize = FastImage.size("https://s3-us-west-1.amazonaws.com/aprtr-seed/mochi.jpg", :raise_on_failure => true, :timeout => 1)
    photo49 = Photo.create!(title: "Mochi", description: "This is my dog Mochi. He is a Shiba Inu and was ~4 months when we took this photo.", uploader_id: user1.id, width: photoSize[0], height: photoSize[1])
    photo21.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/joeLam.jpg"), filename: "joeIS.jpg")
    photo47.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/myIS.jpg"), filename: "darrenIS.jpg")
    photo49.picture.attach(io: open("https://s3-us-west-1.amazonaws.com/aprtr-seed/mochi.jpg"), filename: "mochi.jpg")
    

  # Albums
  Album.destroy_all
  album1 = Album.create!(title: "test1", description: "test1", user_id: user1.id) 
  album2 = Album.create!(title: "test2", description: "test2", user_id: user2.id)
  album3 = Album.create!(title: "test2", description: "test2", user_id: user9.id)

  # Album Photos Join Table
  albumPhoto1 = AlbumPhoto.create!(photo_id: photo1.id, album_id: album1.id);
  albumPhoto2 = AlbumPhoto.create!(photo_id: photo30.id, album_id: album1.id);
  albumPhoto3 = AlbumPhoto.create!(photo_id: photo41.id, album_id: album3.id);
  albumPhoto4 = AlbumPhoto.create!(photo_id: photo20.id, album_id: album3.id);

  end