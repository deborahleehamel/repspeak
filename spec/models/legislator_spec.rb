require 'rails_helper'

RSpec.describe Legislator, type: :model do
  before do
    `rake import_district_data:district_data`
  end

  describe ".all-data" do
    it "returns an array of legislator objects" do
      VCR.use_cassette "Legislator.all_data test" do

        legislators = Legislator.all_data

        expect(legislators.count).to eq(9)
        expect(legislators.first.class).to eq(Legislator)
      end
    end
  end
end
