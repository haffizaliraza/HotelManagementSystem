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

class Salary < ApplicationRecord
  belongs_to :employ

  before_save :create_expence

  def create_expence
  	Expense.create(amount: self.amount , detail: Employ.find(self.employ_id).name + "-"+self.detail , date: Date.today )
  end

end
