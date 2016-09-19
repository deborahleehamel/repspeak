require "rails_helper"

RSpec.describe GovTrackService do
  context "#get_reps" do
    it "returns legislators" do
      VCR.use_cassette("gov_track_service#get_reps") do
        service = GovTrackService.new

        response = JSON.parse(service.get_reps)

        expect(response[:state][0]).to eq("CO")
        expect(response[:district][0]).to eq("")
        expect(response[:title_long][0]).to eq("Senator")
        expect(response[:person__name][0]).to eq("Michael Bennet")
        expect(response[:twitter_id][0]).to eq("SenBennetCo")

        expect(response[:state][1]).to eq("CO")
        expect(response[:district][1]).to eq("1")
        expect(response[:title_long][1]).to eq("Representative")
        expect(response[:person__name][1]).to eq("Michael Bennet")
        expect(response[:twitter_id][1]).to eq("SenBennetCo")

      end
    end
  end
end
