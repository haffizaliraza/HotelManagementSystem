# == Schema Information
#
# Table name: employs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cnic       :string(255)
#  phone_no   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EmployTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
