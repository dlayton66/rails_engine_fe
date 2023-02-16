require 'rails_helper'

RSpec.describe 'merchants index', :vcr do
  it 'lists all merchants by name' do
    visit merchants_path

    expect(page).to have_link("Schroeder-Jerde", href: merchant_path(1))
    expect(page).to have_link("Wisozk, Hoeger and Bosco", href: merchant_path(100))
    expect(all('p').count).to eq(100)
  end
end