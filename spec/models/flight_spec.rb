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

  let(:new_york) { create(:airport, :new_york) }
  let(:san_fran) { create(:airport, :san_francisco) }
  let(:flight) { create(:flight, from_airport: new_york, to_airport: san_fran) }

  it 'should humanize the flight duration' do
    expect(flight.humanize_time).to eq '6h50m'
  end

  it 'should long humanize the flight duration' do
    expect(flight.humanize_time_long).to eq '6 hours and 50 minutes'
  end

end
