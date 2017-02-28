# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# 5.times do
#
#   name = Faker::LordOfTheRings.character
#
#   user = User.create(user_name: name,
#                          email: name.gsub(/\s/,'') + ".gmail")
#
#   rand(1..10).times do
#     user.posts.create!(
#       title: Faker::Friends.character,
#       body: Faker::Friends.quote,
# #      user_id: user.id    Chris said this isn't needed....
#
#     )
#   end
# end

5.times do

  name = Faker::LordOfTheRings.character
  user = User.create(user_name: name,
                         email: name.gsub(/\s/,'') + ".gmail")

  rand(1..5).times do
    #-------
    post = user.posts.create!(
      title: Faker::Friends.character,
      body: Faker::Friends.quote,
#      user_id: user.id    Chris said this isn't needed....
         )

         rand(1..10).times do
           post.comments.create!(
             body: Faker::Hacker.say_something_smart,
             user: user
       #      user_id: user.id    Chris said this isn't needed....
                )
         end
    #-------
  end
end
