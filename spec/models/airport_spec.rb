# == Schema Information
#
# Table name: airports
#
#  id         :bigint           not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Airport do
  context 'association' do
    it { should have_many :inbound_flights }
    it { should have_many :outbound_flights }
  end
  context 'validations' do
    it { should validate_presence_of :code }
    it { should validate_length_of(:code).is_equal_to 3  }
    it { should allow_value('NOP').for(:code) }
    it { should_not allow_value('N0P').for(:code) }
  end
end

