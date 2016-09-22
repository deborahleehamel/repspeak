class Legislator < ApplicationRecord
  belongs_to :district

  def self.all_data
    raw_data = service.get_reps
    raw_data["objects"].map do |info|
      Legislator.create!(LegislatorData.new(info).formatted)
    end
  end

  private

    def self.service
      GovTrackService.new
    end

end
