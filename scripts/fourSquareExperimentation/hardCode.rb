# frozen_string_literal: true

# https://api.foursquare.com/v2/venues/search?near=03878&client_id=05AWY3YE331X33NDYBXNAH1AAJU013CEVX54PEV5TG0EISGK&client_secret=ZQQN1W4V0V0E12XAYDUAMVWBCMNQSQUWUZQB1JVWFLYNMUCY&v=20170801&categoryId=4d4b7105d754a06374d81259,4bf58dd8d48988d110941735

require 'open-uri'
require 'json'

NEAR = '03878'
CLIENT_ID = '05AWY3YE331X33NDYBXNAH1AAJU013CEVX54PEV5TG0EISGK'
CLIENT_SECRET = 'ZQQN1W4V0V0E12XAYDUAMVWBCMNQSQUWUZQB1JVWFLYNMUCY'
V = '20170801'
CATEGORY_ID = '4d4b7105d754a06374d81259,4bf58dd8d48988d110941735'

response = open("https://api.foursquare.com/v2/venues/search?near=#{NEAR}&client_id=#{CLIENT_ID}&client_secret=#{CLIENT_SECRET}&v=#{V}&categoryId=#{CATEGORY_ID}")
response_status = response.status
response_body = response.read
data_hash = JSON.parse(response_body)
puts response_status[0] == '200'
# puts response_body

# puts(data_hash['response']['venues'])
