require 'rails_helper'


describe 'User can create location' do

  scenario 'User can go to location/new page' do

    visit '/'

    expect(page).to have_content("Locations")

    click_button 'New Location'

    expect(page).to have_content

  end

end
