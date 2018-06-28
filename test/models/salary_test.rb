# == Schema Information
#
# Table name: salaries
#
#  id         :integer          not null, primary key
#  employ_id  :integer
#  amount     :integer
#  detail     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SalaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
