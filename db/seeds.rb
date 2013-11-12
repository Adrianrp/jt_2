# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
InfoProduct.delete_all
InfoProduct.create!(title: 'New year menu',
  description: 
    %{<p>
        Spare ribs prosciutto pastrami ham, strip steak bacon shankle biltong 
        shank salami turducken. Shankle pancetta boudin filet mignon prosciutto. 
        apicola kielbasa swine meatloaf beef tri-tip. Drumstick beef frankfurter 
        tail ham jerky. Doner pork rump turkey capicola, jowl pork loin ribeye 
        sausage bacon.
	 	while writing clearer, cleaner, and safer code.
      </p>},
  image_id:   1,    
  price: 200.00)
# . . .
Image.delete_all
Image.create!(info_product_id: 1,
  image: 'cs.jpg')
# . . .