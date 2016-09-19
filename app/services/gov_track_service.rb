class GovTrackService

  def initialize
    @_connection = Faraday.new(:url => 'https://www.govtrack.us/api/v2')
  end

  def get_reps
    # require "pry"; binding.pry
    response = parse(Faraday.get("https://www.govtrack.us/api/v2/role?current=true&format=json&fields=state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid&state=CO&limit=600"))
  end

  private

    def connection
      @_connection
    end

    def parse(response)
      JSON.parse(response.body, symbolize_name: true)
    end
end
