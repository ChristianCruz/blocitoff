require 'faker'

@user = User.find(6)

50.times do
  #Add code to date posts
  #Add code to date posts
  #Add code to date posts
  @user.items.create!(name: Faker::Lorem.sentence, created_at: Random.rand(7).days.ago)

end
items = Item.all



 puts "Seed finished"
 # puts "#{Item.count} items created"