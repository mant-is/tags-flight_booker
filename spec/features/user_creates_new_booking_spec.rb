require 'rails_helper'

RSpec.feature 'user creates a new booking' do
  let!(:new_york) { create(:airport, :new_york) }
  let!(:san_fran) { create(:airport, :san_francisco) }
  let!(:jfk_to_sfo) { create(:flight, from_airport: new_york, to_airport: san_fran) }
  let!(:joe_doe) { build_stubbed(:passenger, email: 'joedoe@fubar.com', name: 'Joe Doe') }

  scenario 'successfully' do 
    visit root_path
    select 'JFK', from: 'flight_from_airport'
    select 'SFO', from: 'flight_to_airport'
    select '06/25/2021', from: 'flight_start'
    select 1, from: 'flight_num_passengers'
    click_button 'Search'
    choose "flight_#{ jfk_to_sfo.id }"
    click_button 'Add passenger details'
    fill_in 'Name', with: joe_doe.name
    fill_in 'Email', with: joe_doe.email
    click_button 'Book flight'
    expect(page).to have_css 'h1.booking-header', text: "Booking #{ jfk_to_sfo.id }"
    expect(page).to have_content joe_doe.name
    expect(page).to have_content jfk_to_sfo.humanize_duration_long
  end

  scenario 'unsuccessfully' do 
    visit root_path
    select 'JFK', from: 'flight_from_airport'
    select 'SFO', from: 'flight_to_airport'
    select '06/25/2021', from: 'flight_start'
    select 1, from: 'flight_num_passengers'
    click_button 'Search'
    choose "flight_#{ jfk_to_sfo.id }"
    click_button 'Add passenger details'
    fill_in 'Name', with: ''
    fill_in 'Email', with: ''
    click_button 'Book flight'
    expect(page).to have_content "Passengers name can't be blank, Passengers email can't be blank"
  end
end

