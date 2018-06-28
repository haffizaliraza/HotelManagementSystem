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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
