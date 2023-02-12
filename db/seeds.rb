User.destroy_all
u1 = User.create :username => 'jonesy', :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :username => 'craigsy', :email => 'craigsy@ga.co', :password => 'chicken',
# u3 = User.create :username => 'holsy', :email => 'holsy@ga.co', :password => 'chicken',
# u4 = User.create :username => 'burnsy', :email => 'burnsy@gmail.co', :password => 'chicken',
# u5 = User.create :username => 'jones', :email => 'jones@gmail.co', :password => 'chicken', 
# u6 = User.create :username => 'craig', :email => 'craig@gmail.co', :password => 'chicken',
# u7 = User.create :username => 'holt', :email => 'holt@gmail.co', :password => 'chicken',
# u8 = User.create :username => 'burns', :email => 'burns@gmail.co', :password => 'chicken'
# u9 = User.create :username => 'hue', :email => 'hue@ga.co', :password => 'chicken', :admin => true
# u10 = User.create :username => 'fung', :email => 'fung@ga.co', :password => 'chicken', :admin => true
# u11 = User.create :username => 'wayne', :email => 'wayne@ga.co', :password => 'chicken', :admin => true
puts "#{ User.count } users"

Offer.destroy_all
o1 = Offer.create :offer_amount => '50', :status => 'Open'
o2 = Offer.create :offer_amount => '60', :status => 'Open'
o3 = Offer.create :offer_amount => '70', :status => 'Open'
o4 = Offer.create :offer_amount => '50', :status => 'Open'
o5 = Offer.create :offer_amount => '60', :status => 'Open'
o6 = Offer.create :offer_amount => '70', :status => 'Open'
o7 = Offer.create :offer_amount => '80', :status => 'Open'
o8 = Offer.create :offer_amount => '90', :status => 'Open'
o9 = Offer.create :offer_amount => '500', :status => 'Open'
o10 = Offer.create :offer_amount => '100', :status => 'Open'
o11 = Offer.create :offer_amount => '200', :status => 'Open'
o12 = Offer.create :offer_amount => '300', :status => 'Open'
o13 = Offer.create :offer_amount => '400', :status => 'Open'
o14 = Offer.create :offer_amount => '1000', :status => 'Open'
puts "#{ Offer.count } offers"

Request.destroy_all
r1 = Request.create :status => 'Open', :location => 'Bondi', :title => 'carpet clean', :decimal => '50', :description => 'carpet clean need help'
r2 = Request.create :status => 'Open', :location => 'Double bay', :title => 'Moving house', :decimal => '60', :description => 'moving house need help'
r3 = Request.create :status => 'Open', :location => 'Glebe', :title => 'Wall repair', :decimal => '70', :description => 'wall repair need help'
r4 = Request.create :status => 'Open', :location => 'Pyrmont', :title => 'Paint bathroom', :decimal => '50', :description => 'I need helpt to paint my bathroom'
r5 = Request.create :status => 'Open', :location => 'Parramatta', :title => 'Kitchen clean', :decimal => '60', :description => 'I need help to clean my kitchen'
r6 = Request.create :status => 'Open', :location => 'Surry hills', :title => 'Pet sitting', :decimal => '70', :description => 'look after pets whilst i am on holiday'
r7 = Request.create :status => 'Open', :location => 'Manly', :title => 'House clean', :decimal => '80', :description => 'clean house after a party'
r8 = Request.create :status => 'Open', :location => 'Pyrmont', :title => 'Moving house ptob', :decimal => '90', :description => 'need help to move house from pyrmont to bondi'
r9 = Request.create :status => 'Open', :location => 'Blacktown', :title => 'baysitter needed', :decimal => '500', :description => 'baby sit my children for a month'
r10 = Request.create :status => 'Open', :location => 'Haymarket', :title => 'broekn washing machine', :decimal => '10', :description => 'need someone to repair my washing machine'
r11 = Request.create :status => 'Open', :location => 'Townhall', :title => 'lazy coder', :decimal => '20', :description => 'write my seed data for a coding project'
r12 = Request.create :status => 'Open', :location => 'Kirribilli', :title => 'dirty car', :decimal => '30', :description => 'Clean my car for $60'
r13 = Request.create :status => 'Open', :location => 'Randwick', :title => 'save the children', :decimal => '40', :description => 'teach my childrent to swim'
r14 = Request.create :status => 'Open', :location => 'Alexandria', :title => 'bonjour', :decimal => '10', :description => 'I need lessons to learn basic french'
puts "#{ Request.count } requests"

puts "Users and requests"
u1.offers << r1 << r2
u2.offers << r3 << r4

puts "Users and offers"
u1.offers << o1 << o2 << o3 << o4 << o5 << o6
u2.offers << o7 << o8 << o9 << o10 << o11 << o12
