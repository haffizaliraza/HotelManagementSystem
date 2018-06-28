10.times do |n|
	print Employ.create(name: Faker::Name.name ,
	 cnic: Faker::PhoneNumber.phone_number ,
	  phone_no: Faker::PhoneNumber.cell_phone )

end


# 100.times do |n|
# 	Room.create(room_no: "Room#{n}" , avalable: [true,false].sample)
# end