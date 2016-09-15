class GovTrackService
  
  def self.get_reps
    response = parse(Faraday.get("https://www.govtrack.us/api/v2/role?current=true&limit=600"))
    Legislators.find_or_create_by(response["objects"])
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_name: true)
  end
end
