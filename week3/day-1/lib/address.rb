require 'open-uri'
require 'json'

class Address
  attr_accessor :street, :city, :state
  attr_reader :zip

  def zip=(zip_code)
    lookup = google_get(zip_code)

    self.city = lookup
    self.state = lookup
  end

  protected
  # subclasses and us (this class) are the only ones who can call

  private
  # We (this class) are the only ones who can call

  def google_get(zip_code)
    api_data = open("http://maps.googleapis.com/maps/api/geocode/json?address=#{zip_code}&sensor=true").read
    json_data = JSON.parse(api_data)

    results = json_data["results"].first
    formatted_address = results["formatted_address"]

    return formatted_address
  end
end
