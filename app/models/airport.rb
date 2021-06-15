# == Schema Information
#
# Table name: airports
#
#  id         :integer          not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Airport < ApplicationRecord
  validates :code, presence: true, 
    length: { is: 3 },
    format: { with: /\A[A-Z]{3}\z/ } 
end

