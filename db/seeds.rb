# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Like.destroy_all
Comment.destroy_all
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

c1 = Comment.create!(artwork_id: a1.id, user_id: user_2.id, body: "a")
c2 = Comment.create!(artwork_id: a1.id, user_id: user_3.id, body: "b")
c3 = Comment.create!(artwork_id: a1.id, user_id: user_1.id, body: "c")
c4 = Comment.create!(artwork_id: a2.id, user_id: user_2.id, body: "d")
c5 = Comment.create!(artwork_id: a2.id, user_id: user_1.id, body: "a")
c6 = Comment.create!(artwork_id: a3.id, user_id: user_3.id, body: "adagh")

l1 = Like.create!(user_id: user_1.id, likable_id: a1.id, likable_type: 'Artwork')
l2 = Like.create!(user_id: user_1.id, likable_id: a2.id, likable_type: 'Artwork')
l3 = Like.create!(user_id: user_1.id, likable_id: c1.id, likable_type: 'Comment')
l4 = Like.create!(user_id: user_1.id, likable_id: c2.id, likable_type: 'Comment')
l5 = Like.create!(user_id: user_2.id, likable_id: a1.id, likable_type: 'Artwork')
l6 = Like.create!(user_id: user_2.id, likable_id: a2.id, likable_type: 'Artwork')
l7 = Like.create!(user_id: user_2.id, likable_id: c1.id, likable_type: 'Comment')


 

