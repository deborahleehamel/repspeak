class GovTrackService

  def iniitalize
    @_connection = Faraday.new(:url => 'https://www.govtrack.us/api/v2')

    # @_connection = Faraday.new("https://www.govtrack.us/api/v2/role?current=true/role")
    # ?current=true
    # &format=csv
    # &fields=state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid
    # &state=CO
    # &limit=600

    # faraday.params['format'] = 'csv'
    # faraday.params['fields'] = 'state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid'
    # faraday.params['state'] = 'CO'
    # faraday.params['format'] = '600'
  end

  def get_reps
    # require "pry"; binding.pry
    # require "pry"; binding.pry
    response = parse(connection.get("/role?current=true&format=csv&fields=state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid&state=CO&limit=600"))
  end

  # def self.get_reps
  #   response = parse(Faraday.get("https://www.govtrack.us/api/v2/role?current=true&format=csv&fields=state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid&state=CO&limit=600"))
  #   Legislators.find_or_create_by(response["objects"])
  # end

  private

    def connection
      @_connection
    end

    def parse(response)
      JSON.parse(response.body, symbolize_name: true)
    end
end
