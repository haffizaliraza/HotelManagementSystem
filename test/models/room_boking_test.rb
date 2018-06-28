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

require 'test_helper'

class RoomBokingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
