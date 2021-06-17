require 'rails_helper'

RSpec.describe 'User searches for a flight' do
  let!(:new_york) { create(:airport, code: 'JFK') } 
  let!(:san_francisco) { create(:airport, code: 'SFO') }
  let!(:philadelphia) { create(:airport, code: 'PHI') } 
  let!(:atlanta) { create(:airport, code: 'ATL') } 

  let!(:nyc_to_sfo) { create(:flight, from_airport: new_york, to_airport: san_francisco) }  
  scenario 'and sees the search results' do
    visit flights_path
    select 'JFK', from: 'flight_from_airport'
    select 'SFO', from: 'flight_to_airport'
    click_button 'Search'
    expect(page).to have_css "#flight_#{ new_york.id }", text: new_york.code
  end
end
