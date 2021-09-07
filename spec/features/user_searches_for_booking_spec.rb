require 'rails_helper'

RSpec.describe 'User searches for a booking' do
  # let!(:new_york) { create(:airport, code: 'JFK') } 
  # let!(:san_francisco) { create(:airport, code: 'SFO') }
  # let!(:philadelphia) { create(:airport, code: 'PHI') } 
  # let!(:atlanta) { create(:airport, code: 'ATL') } 
  # let!(:nyc_to_sfo) { create(:flight, from_airport: new_york, to_airport: san_francisco) }  

  let!(:booking) { create(:passenger_booking )}
  scenario 'and sees the booking information' do
    visit booking_search_path booking
    fill_in 'Confirmation number', with: booking.confirmation_number
    click_button 'Search'
    expect(page).to have_css "#booking_#{ booking.id }", text: booking.confirmation_number
  end
end
