require 'rails_helper'

RSpec.describe 'POST /bookings' do
  let!(:new_york) { create(:airport, :new_york) }
  let!(:san_fran) { create(:airport, :san_francisco) }
  let!(:jfk_to_sfo) { create(:flight, from_airport: new_york, to_airport: san_fran) }
  let!(:joe_doe) { build_stubbed(:passenger, email: 'joedoe@fubar.com', name: 'Joe Doe') }

  it 'creates a new booking' do
    booking_params = attributes_for(:booking, flight_id: jfk_to_sfo.id, passengers_attributes: { joe_doe.id => { name: joe_doe.name, email: joe_doe.email }}) 

    post '/bookings', params: { booking: booking_params }

    expect(response.status).to eq 302 
    expect(Booking.first.passengers.first.name).to eq joe_doe.name
  end
end
