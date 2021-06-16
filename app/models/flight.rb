# == Schema Information
#
# Table name: flights
#
#  id              :integer          not null, primary key
#  to_airport_id   :integer
#  from_airport_id :integer
#  start           :datetime
#  duration        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: :Airport, foreign_key: :from_airport_id
  belongs_to :to_airport, class_name: :Airport, foreign_key: :to_airport_id
end
