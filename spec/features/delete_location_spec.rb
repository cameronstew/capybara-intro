require 'rails_helper'

describe 'User can delete location' do

  scenario 'User can delete location' do

    @location = Location.create(name: 'Nick', address: '123 bogus lane', zipcode: '12234')

    visit '/'

    click_on ("Delete")
    expect(page).to have_content "destroyed"
  end
end
