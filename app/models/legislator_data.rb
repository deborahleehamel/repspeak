class LegislatorData
  attr_reader :formatted

  def initialize(data)
    district_data = set_district(data)

    @formatted = {
      state:         data["state"],
      district_id:   District.find_by(district_number: district_data).id,
      role_type:     data["title_long"],
      name:          data["person"]["name"],
      first_name:    data["person"]["firstname"],
      last_name:     data["person"]["lastname"],
      twitter_id:    data["person"]["twitterid"]
    }
  end

  def set_district(data)
    if !data["district"]
      0
    else
      data["district"]
    end
  end

end
