require 'rails_helper'

RSpec.describe 'merchant show', :vcr do
  it 'displays items for a merchant' do
    visit merchant_path(1)

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_link("Item Nemo Facere", href: item_path(4))
    expect(page).to have_link("Item Ea Voluptatum", href: item_path(2500))
  end
end