require 'rails_helper'

describe 'User can create event' do

  scenario 'User can create event' do

    @location = Location.create(name: 'Nick', address: '123 bogus lane', zipcode: '12234')

    visit("/locations/#{@location.id}")

    click_link "New Event"

    fill_in "Description", with: "Party"
    fill_in "Date", with: "12-31-99"
    # check "Requires id", with: true

    click_button "Create Event"

    expect(page).to have_content "Party"
  end
end
