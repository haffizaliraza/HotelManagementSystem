# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  room_no    :string(255)
#  avalable   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ApplicationRecord
	has_many :room_bokings , inverse_of: :room , dependent: :destroy
	has_many :bookings , through: :room_bokings
end
