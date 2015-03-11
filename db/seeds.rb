require 'faker'

@user = User.find(6)

50.times do
  #Add code to date posts
  #Add code to date posts
  #Add code to date posts
  @user.items.create!(name: Faker::Lorem.sentence)
end
items = Item.all



 puts "Seed finished"
 # puts "#{Item.count} items created"