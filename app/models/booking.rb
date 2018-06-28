# == Schema Information
#
# Table name: bookings
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  cnic          :string(255)
#  phone         :string(255)
#  email         :string(255)
#  address       :string(255)
#  bill          :integer
#  other_charges :integer
#  sub_total     :integer
#  discount      :integer
#  total         :integer
#  check_in      :date
#  check_out     :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Booking < ApplicationRecord
	has_many :room_bokings, inverse_of: :booking , dependent: :destroy
  accepts_nested_attributes_for :room_bokings, reject_if: :all_blank, allow_destroy: true
  has_many :rooms , through: :room_bokings

  before_save :set_room_booked
  after_update :set_room_free

def set_room_booked
	bill = 0
	self.room_bokings.each do |r_b|
		r_b.room.avalable = false
		bill += r_b.charges * r_b.days
		r_b.room.save
		self.bill = bill
	end
end

def set_room_free
		self.room_bokings.each do |r_b|
		r_b.room.avalable = true
		r_b.room.save
	end
end




end
