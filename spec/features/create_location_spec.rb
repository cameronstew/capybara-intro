require 'rails_helper'


# describe 'User can create location' do
#
#   scenario 'User can go to location/new page' do
#
#     visit '/'
#
#     expect(page).to have_content("Locations")
#
#   end
 describe 'User can create location' do

  scenario 'User can go to location/new page' do

    visit '/locations'

    click_link("New Location")

     expect(page).to have_content "New Location"

  end

end
