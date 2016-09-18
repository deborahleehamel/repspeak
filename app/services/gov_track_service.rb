class GovTrackService

  def self.get_reps
    response = parse(Faraday.get("https://www.govtrack.us/api/v2/role?current=true&format=csv&fields=state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid&state=CO&limit=600"))
    Legislators.find_or_create_by(response["objects"])
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_name: true)
  end
end
