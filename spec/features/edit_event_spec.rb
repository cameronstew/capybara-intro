require 'rails_helper'

describe 'User can edit event' do

  scenario 'User can go to location/id/event/id/edit' do

    @location = Location.create(name: 'Nick', address: '123 bogus lane', zipcode: '12234')
    @event = Event.create(description: 'Sick Party!', date: "12/31/99", requires_id: true, location_id: @location.id)

    visit("/locations/#{@location.id}/events/#{@event.id}/edit")

    expect(page).to have_content "Edit Event"
  end
end
