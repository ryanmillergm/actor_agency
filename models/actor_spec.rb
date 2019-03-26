require 'rails_helper'

RSpec.describe Actor, type: :model do
  describe '.total_fee' do
    it "calculates the total fee" do

      # do not change the contents of this file

      agency = Agency.create!(
        name: "Actors-R-Us",
        city: "Denver",
        base_fee: 300
      )

      actor = agency.actors.create!(
        name: "Megan McMahon",
        specialty: "Local Ads",
        fee: 200
      )

      expect(actor.total_fee).to equal(500)
    end
  end
end
