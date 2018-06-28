# == Schema Information
#
# Table name: room_bokings
#
#  id         :integer          not null, primary key
#  room_id    :integer
#  booking_id :integer
#  charges    :integer
#  days       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoomBoking < ApplicationRecord
  belongs_to :room
  belongs_to :booking
end
