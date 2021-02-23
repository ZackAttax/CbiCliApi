require_relative '..bin/executable'
BASE_URL = "https://www.thecocktaildb.com/api/json/v1/1"
extension = #url#{API_KEY}
uri = URI(BASE_URL + extension)
resp = Net::HTTP.get(uri)
formatted_resp = JSON.prse(resp)