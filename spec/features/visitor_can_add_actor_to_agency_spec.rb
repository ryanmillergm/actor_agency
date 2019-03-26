require 'rails_helper'

RSpec.describe "When a user visits the show page for an agency" do
  it "they can add a new actor" do

    # do not change the contents of this file

    agency = Agency.create!(
      name: "Actors-R-Us",
      city: "Denver",
      base_fee: 500
    )

    visit agency_path(agency)
    click_link "Add actor to portfolio"

    fill_in "Name",       with: "Rene Casco"
    fill_in "Specialty",   with: "Movie"
    fill_in "Fee", with: 750
    click_on "Create Actor"

    expect(current_path).to eq(agency_path(agency))
    within(".actors") do
      expect(page).to have_content("Rene Casco: $1250")
    end
  end
end
