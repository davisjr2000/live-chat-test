# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do
  room = ChatRoom.new
  room.name = "HerokuTest"
  room.save
end


subjects = ["Math","English","Portuguese","Spanish","Biology","Chemistry","Physics","Geography","History"]

subjects.each do |subject|
  sub = Subject.new
  sub.title = subject
  sub.save
end
