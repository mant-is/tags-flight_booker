require 'rails_helper'

RSpec.feature 'user visits flights search page' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_css "input[name='flight[from_airport]']"
    expect(page).to have_css "input[name='flight[to_airport]']"
    expect(page).to have_css "input[name='flight[date]']"
    expect(page).to have_css "input[name='flight[num_passengers]']"
    expect(page).to have_css "input[name='commit']"
  end
end

