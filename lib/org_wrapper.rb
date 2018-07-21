class OrgWrapper
  # BASE_URL = "http://data.orghunter.com/v1/charitysearch?user_key=8e03b14d92b90af73c69df18b485c31a&ein=910564983"
  BASE_URL = "http://data.orghunter.com/v1/charitysearch"
  GEO_URL = "http://data.orghunter.com/v1/charitygeolocation"
  KEY = ENV["API_KEY"]

  def self.fetch(ein)
    url = BASE_URL + "?user_key=" + KEY + "&ein=" + ein
    geo_url = GEO_URL + "?user_key=" + KEY + "&ein=" + ein
    response = HTTParty.get(url)
    geo_response = HTTParty.get(geo_url)
    if response["code"] == 404 || geo_response["code"] == 404
      return []
    else
      db_org = Organization.find_by(ein:ein)
      organization = self.construct_org(response["data"][0], db_org, geo_response["data"])
      return organization
    end
  end

  def self.fetch_all
    eins = Organization.all.map(&:ein)
    organizations = []
    eins.each do |ein|
      organizations << self.fetch_coordinates(ein)
    end
    return organizations
  end

  def self.fetch_coordinates(ein)
    geo_url = GEO_URL + "?user_key=" + KEY + "&ein=" + ein
    geo_response = HTTParty.get(geo_url)

    if geo_response["code"] == 404
      return []
    else
      organization = self.construct_coordinates(geo_response["data"])
      return organization
    end
  end
  
  private

  def self.construct_org(api_result, db_result, geo_result)
    Org.new(
      ein: api_result["ein"],
      charityName: api_result["charityName"],
      url: api_result["url"],
      donationUrl: api_result["donationUrl"],
      street: geo_result["street"],
      city: geo_result["city"],
      state: geo_result["state"],
      zipCode: geo_result["zipCode"],
      country: geo_result["country"],
      website: api_result["website"],
      missionStatement: api_result["missionStatement"],
      longitude: geo_result["longitude"],
      latitude: geo_result["latitude"],
      amazonWishlist: db_result["amazonWishlist"],
      accepted_categories: db_result["accepted_categories"]
    )
  end

  def self.construct_coordinates(geo_result)
    Org.new(
      ein: geo_result["ein"],
      longitude: geo_result["longitude"],
      latitude: geo_result["latitude"]
    )
  end
end
