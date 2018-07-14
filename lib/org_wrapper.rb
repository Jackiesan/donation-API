class OrgWrapper
  # BASE_URL = "http://data.orghunter.com/v1/charitysearch?user_key=8e03b14d92b90af73c69df18b485c31a&ein=910564983"
  BASE_URL = "http://data.orghunter.com/v1/charitysearch"
  KEY = ENV["API_KEY"]

  def self.fetch(ein)
    url = BASE_URL + "?user_key=" + KEY + "&ein=" + ein
    response = HTTParty.get(url)
    if response["code"] == 404
      return []
    else
      db_org = Organization.find_by(ein:ein)
      organization = self.construct_org(response["data"][0], db_org)
      return organization
    end
  end

  private

  def self.construct_org(api_result, db_result)
    Org.new(
      ein: api_result["ein"],
      charityName: api_result["charityName"],
      url: api_result["url"],
      donationUrl: api_result["donationUrl"],
      city: api_result["city"],
      state: api_result["state"],
      zipCode: api_result["zipCode"],
      website: api_result["website"],
      missionStatement: api_result["missionStatement"],
      longitude: api_result["longitude"],
      latitude: api_result["latitude"],
      amazonWishlist: db_result["amazonWishlist"],
      accepted_categories: db_result["accepted_categories"]
    )
  end
end
