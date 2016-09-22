require "rails_helper"

describe GovTrackService do
  scenario "returns legislator inforamtion" do
    VCR.use_cassette("gov_track_service#get_reps") do
      info = ["district", "person", "state", "title_long"]

      service = GovTrackService.new

      results = service.get_reps

      expect(results["objects"].first.keys).to eq info

      expect(results["objects"][0]["state"]).to eq("CO")
      # expect(results["objects"][0]["district"]).to eq()
      expect(results["objects"][0]["title_long"]).to eq("Senator")
      expect(results["objects"][0]["person"]["name"]).to eq("Sen. Michael Bennet [D-CO]")
      expect(results["objects"][0]["person"]["twitterid"]).to eq("SenBennetCo")

      expect(results["objects"][1]["state"]).to eq("CO")
      expect(results["objects"][1]["district"]).to eq(1)
      expect(results["objects"][1]["title_long"]).to eq("Representative")
      expect(results["objects"][1]["person"]["name"]).to eq("Rep. Diana DeGette [D-CO1]")
      expect(results["objects"][1]["person"]["twitterid"]).to eq("RepDianaDeGette")
    end
  end
end
