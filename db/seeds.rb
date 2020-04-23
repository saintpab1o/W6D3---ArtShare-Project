# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtworkShare.destroy_all
Artwork.destroy_all
User.destroy_all

 user_1 = User.create!(username: "a")
 user_2 = User.create!(username: "b")
 user_3 = User.create!(username: "c")
 
 a1 = Artwork.create!(title: "stary_night", image_url: 'a', artist_id: user_1.id)
 a2 = Artwork.create!(title: "mona_lisa", image_url: 'b', artist_id: user_2.id)
 a3 = Artwork.create!(title: "the_last_supper", image_url: 'c', artist_id: user_1.id)
 a4 = Artwork.create!(title: "american_gothic", image_url: 'd', artist_id: user_2.id)

 share1 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: user_2.id)
 share2 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: user_1.id)
 share3 = ArtworkShare.create!(artwork_id: a3.id, viewer_id: user_3.id)
 share4 = ArtworkShare.create!(artwork_id: a3.id, viewer_id: user_1.id)
 share5 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: user_2.id)

 

