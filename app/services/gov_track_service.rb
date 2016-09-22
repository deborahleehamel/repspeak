class GovTrackService

  def initialize
    @_connection = Faraday.new(:url => 'https://www.govtrack.us')
  end

  def get_reps
    connection.params = { "format" => "json",
                          "fields" => "state,district,title_long,person__firstname,person__lastname,person__name,person__twitterid",
                          "state" => "CO"
                        }
    response = parse(connection.get("/api/v2/role?current=true"))
  end

  private

    def connection
      @_connection
    end

    def parse(response)
      JSON.parse(response.body, symbolize_name: true)
    end
end
