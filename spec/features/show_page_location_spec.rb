require 'rails_helper'

describe 'User can see location show page' do

  scenario 'User can go to location/id page' do

    @location = Location.create(name: 'Nick', address: '123 bogus lane', zipcode: '12234')
    @location_id = @location.id

    visit("/locations/#{@location_id}")
    expect(page).to have_content @location.name
  end
end
