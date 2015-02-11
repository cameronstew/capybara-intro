require 'rails_helper'

 describe 'User can create location' do

  scenario 'User can go to location/new page' do

    visit '/locations'

    click_link("New Location")

     expect(page).to have_content "New Location"


      fill_in "Name", with: "Nick K"
      fill_in "Address", with: "1234 Happy Lane"
      fill_in "Zipcode", with: "80205"

    click_button("Create Location")

    expect(page).to have_content "Nick K"

  end
end
