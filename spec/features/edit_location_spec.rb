require 'rails_helper'

describe 'User can see location show page' do

  scenario 'User can go to location/id page' do

    @location = Location.create(name: 'Nick', address: '123 bogus lane', zipcode: '12234')
    @location_id = @location.id

    visit("/locations/#{@location_id}/edit")

    fill_in "Name", with: "Cameron"
    fill_in "Address", with: "123432546 Happy Lane"
    fill_in "Zipcode", with: "80207"

    click_button "Update Location"

    expect(page).to have_content "Cameron"
  end
end
