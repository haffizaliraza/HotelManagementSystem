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

class Employ < ApplicationRecord
end
