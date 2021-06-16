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
require 'rails_helper'

RSpec.describe Flight do 
  context 'associations' do
    it { should belong_to :from_airport }
    it { should belong_to :to_airport }
  end
end
