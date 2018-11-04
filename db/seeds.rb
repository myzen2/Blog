# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.create([{title: 'zozo'}, {title: 'nouveau'}])
#
#
100.times do
  Post.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs
  )
end

#
#
#
# if Rails.env.development?
#
#   users = []
#   posts = []
#   #comments = []
#
#   # 500.times do |i|
#   #   users << User.create(username: Faker::Name.name)
#   # end
#   #
#   # 500.times do |i|
#   #   posts << Post.create(
#   #       title: Faker::Lorem.sentence,
#   #       content: Faker::Lorem.paragraphs(5),
#   #       user_id: users.sample
#   #   )
#   # end
#   #
#   # # 5000.times do |i|
#   # #   comments << Comment.create(
#   # #       content: Faker::Lorem.paragraph,
#   # #       user: users.sample,
#   # #       post: posts.sample
#   # #   )
#   # # end
#   #
#
p "Created #{Post.count} posts"
# end
