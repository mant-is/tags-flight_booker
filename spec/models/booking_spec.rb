# == Schema Information
#
# Table name: bookings
#
#  id         :bigint           not null, primary key
#  flight_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Booking do
  describe 'associations' do
    it { should belong_to :flight }
    it { should have_many :passengers }
  end

  describe 'validations' do
    it { should validate_presence_of :flight }
    it { should validate_presence_of :passengers }
    it { should accept_nested_attributes_for :passengers }
  end
end
