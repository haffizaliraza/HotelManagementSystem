# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  amount     :integer
#  date       :date
#  detail     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expense < ApplicationRecord
end
