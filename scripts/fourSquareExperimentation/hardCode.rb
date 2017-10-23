# frozen_string_literal: true

# https://api.foursquare.com/v2/venues/search?near=03878&client_id=05AWY3YE331X33NDYBXNAH1AAJU013CEVX54PEV5TG0EISGK&client_secret=ZQQN1W4V0V0E12XAYDUAMVWBCMNQSQUWUZQB1JVWFLYNMUCY&v=20170801&categoryId=4d4b7105d754a06374d81259,4bf58dd8d48988d110941735

require 'open-uri'
# require 'json'

NEAR = 'asdf'
CLIENT_ID = '05AWY3YE331X33NDYBXNAH1AAJU013CEVX54PEV5TG0EISGK'
CLIENT_SECRET = 'ZQQN1W4V0V0E12XAYDUAMVWBCMNQSQUWUZQB1JVWFLYNMUCY'
V = '20170801'
CATEGORY_ID = '4d4b7105d754a06374d81259,4bf58dd8d48988d110941735'

# encoded_url = URI.parse(URI.encode("https://api.foursquare.com/v2/venues/search?near=#{NEAR}&client_id=#{CLIENT_ID}&client_secret=#{CLIENT_SECRET}&v=#{V}&categoryId=#{CATEGORY_ID}".strip))
# puts encoded_url

# response = open(encoded_url)

begin
response = open("https://api.foursquare.com/v2/venues/search?near=#{NEAR}&client_id=#{CLIENT_ID}&client_secret=#{CLIENT_SECRET}&v=#{V}&categoryId=#{CATEGORY_ID}")
rescue OpenURI::HTTPError => error
  response = error.io
  response_status = response.status
  # puts response.string
end

# response_status = response.status
# response_body = response.read
# data_hash = JSON.parse(response_body)
puts response_status[0]
# puts response_body

# puts(data_hash['response']['venues'])
