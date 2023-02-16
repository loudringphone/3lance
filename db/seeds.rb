User.destroy_all
u1 = User.create :username => 'wayne', :email => 'wayne@ga.co', :password => 'chicken', :admin => true
u2 = User.create :username => 'hue', :email => 'hue@ga.co', :password => 'chicken', :admin => true
u3 = User.create :username => 'fung', :email => 'fung@ga.co', :password => 'chicken', :admin => true
u4 = User.create :username => 'craigsy', :email => 'craigsy@ga.co', :password => 'chicken'
u5 = User.create :username => 'holsy', :email => 'holsy@ga.co', :password => 'chicken'
u6 = User.create :username => 'burnsy', :email => 'burnsy@gmail.co', :password => 'chicken'
u7 = User.create :username => 'cowsy', :email => 'cowsy@ga.co', :password => 'chicken'
u8 = User.create :username => 'helly', :email => 'helly@ga.co', :password => 'chicken'
u9 = User.create :username => 'shilly', :email => 'shilly@gmail.co', :password => 'chicken'

puts "#{ User.count } users"

Request.destroy_all
r1 = Request.create :status => 'Completed', :location => 'Bondi', :title => 'carpet clean', :budget => 50, :description => 'carpet clean need help', :time => DateTime.new(2023, 8, 5, 12, 35)
r2 = Request.create :status => 'Completed', :location => 'Double bay', :title => 'Moving house', :budget => 60, :description => 'moving house need help', :time => DateTime.new(2023, 3, 5, 12, 00)
r3 = Request.create :status => 'Cancelled', :location => 'Glebe', :title => 'Wall repair', :budget => 70, :description => 'wall repair need help', :time => DateTime.new(2023, 3, 1, 8, 35)
r4 = Request.create :status => 'Open', :location => 'Pyrmont', :title => 'Paint bathroom', :budget => 50, :description => 'I need helpt to paint my bathroom', :time => DateTime.new(2023, 4, 4, 11, 30)
r5 = Request.create :status => 'Open', :location => 'Parramatta', :title => 'Kitchen clean', :budget => 60, :description => 'I need help to clean my kitchen', :time => DateTime.new(2023, 2, 21, 10, 00)
r6 = Request.create :status => 'Open', :location => 'Surry hills', :title => 'Pet sitting', :budget => 70, :description => 'look after pets whilst i am on holiday', :time => DateTime.new(2023, 2, 18, 8, 00)
r7 = Request.create :status => 'Open', :location => 'Manly', :title => 'House clean', :budget => 80, :description => 'clean house after a party', :time => DateTime.new(2023, 3, 1, 20, 00)
r8 = Request.create :status => 'Open', :location => 'Pyrmont', :title => 'Moving house job', :budget => 90, :description => 'need help to move house from pyrmont to bondi', :time => DateTime.new(2023, 4, 1, 11, 00)
r9 = Request.create :status => 'Open', :location => 'Blacktown', :title => 'baysitter needed', :budget => 50, :description => 'baby sit my children for a month', :time => DateTime.new(2023, 3, 1, 8, 00)
r10 = Request.create :status => 'Open', :location => 'Haymarket', :title => 'broken washing machine', :budget => 10, :description => 'need someone to repair my washing machine', :time => DateTime.new(2023, 2, 15, 12, 00)
r11 = Request.create :status => 'Open', :location => 'Townhall', :title => 'lazy coder', :budget => 20, :description => 'write my seed data for a coding project', :time => DateTime.new(2023, 2, 17, 12, 30)
r12 = Request.create :status => 'Open', :location => 'Kirribilli', :title => 'dirty car', :budget => 30, :description => 'Clean my car for $60', :time => DateTime.new(2023, 2, 18, 12, 30)
r13 = Request.create :status => 'Open', :location => 'Randwick', :title => 'save the children', :budget => 40, :description => 'teach my childrent to swim', :time => DateTime.new(2023, 2, 18, 8, 30)
r14 = Request.create :status => 'Open', :location => 'Alexandria', :title => 'bonjour', :budget => 10, :description => 'I need lessons to learn basic french', :time => DateTime.new(2023, 2, 18, 14, 30)
puts "#{ Request.count } requests"



puts "Users and requests"
u4.requests << r1 << r2 << r14 << r10
u5.requests << r3 << r4 << r7 << r8
u6.requests << r5 << r6
u7.requests << r9
u8.requests << r13
u9.requests << r11 << r12

Offer.destroy_all
o1 = Offer.new :offer_amount => 50, :status => 'Open'
o1.request_id = r1.id
o1.user_id = u5.id
o1.save
o2 = Offer.new :offer_amount => 60, :status => 'Open'
o2.request_id = r2.id
o2.user_id = u5.id
o2.save
o3 = Offer.new :offer_amount => 70, :status => 'Open'
o3.request_id = r2.id
o3.user_id = u8.id
o3.save
o4 = Offer.new :offer_amount => 50, :status => 'Open'
o4.request_id = r3.id
o4.user_id = u8.id
o4.save
o5 = Offer.new :offer_amount => 60, :status => 'Open'
o5.request_id = r4.id
o5.user_id = u8.id
o5.save
o6 = Offer.new :offer_amount => 70, :status => 'Open'
o6.request_id = r5.id
o6.user_id = u8.id
o6.save
o7 = Offer.new :offer_amount => 80, :status => 'Open'
o7.request_id = r7.id
o7.user_id = u6.id
o7.save
o8 = Offer.new :offer_amount => 90, :status => 'Open'
o8.request_id = r4.id
o8.user_id = u6.id
o8.save
o9 = Offer.new :offer_amount => 50, :status => 'Open'
o9.request_id = r1.id
o9.user_id = u7.id
o9.save
o10 = Offer.new :offer_amount => 10, :status => 'Open'
o10.request_id = r2.id
o10.user_id = u7.id
o10.save
o11 = Offer.new :offer_amount => 20, :status => 'Open'
o11.request_id = r3.id
o11.user_id = u7.id
o11.save
o12 = Offer.new :offer_amount => 30, :status => 'Open'
o12.request_id = r6.id
o12.user_id = u7.id
o12.save
o13 = Offer.new :offer_amount => 40, :status => 'Open'
o13.request_id = r8.id
o13.user_id = u4.id
o13.save
o14 = Offer.new :offer_amount => 100, :status => 'Open'
o14.request_id = r8.id
o14.user_id = u9.id
o14.save
puts "#{ Offer.count } offers"


puts "Requests and offers"
# r1.offers << o1 << o9
# r2.offers << o2 << o3 << o10
# r3.offers << o4 << o11
# r4.offers << o5 << o8
# r5.offers << o6
# r6.offers << o12
# r7.offers << o7
# r8.offers << o13 << o14

puts "Users and offers"
# u4.offers << o13
# u5.offers << o1 << o2
# u6.offers << o7 << o8
# u7.offers << o9 << o10 << o11 << o12
# u8.offers << o3 << o4 << o5 << o6
# u9.offers << o14










# Seed data for Message model
Message.destroy_all
m1 = Message.create! :sender_id => u4.id, :receiver_id => u5.id, :content => "Hello, how many of bedrooms of the apartment?", :is_read => true, :request_id => r1.id
m2 = Message.create! :sender_id => u5.id, :receiver_id => u4.id, :content => "3 bedrooms to be cleaned", :is_read => false, :request_id => r1.id
m3 = Message.create! :sender_id => u4.id, :receiver_id => u6.id, :content => "I can offer a better price.", :is_read => true, :request_id => r2.id
m4 = Message.create! :sender_id => u6.id, :receiver_id => u4.id, :content => "How much is it?", :is_read => false, :request_id => r2.id
m5 = Message.create! :sender_id => u5.id, :receiver_id => u6.id, :content => "When can you start?", :is_read => false, :request_id => r3.id
puts "#{Message.count} Messages"


# Seed data for Comment model
Comment.destroy_all
c1 = Comment.create! :request_id => r2.id, :user_id => u4.id, :content => "Hello, I need help!"
c2 = Comment.create! :request_id => r2.id, :user_id => u5.id, :content => "Raise your budget!"
c3 = Comment.create! :request_id => r2.id, :user_id => u4.id, :content => "No I cant!"
c4 = Comment.create! :request_id => r2.id, :user_id => u6.id, :content => "Damn you cheapskate!"

puts "#{Comment.count} Comments"
