# JSON API to get actor pic
require 'json'
require 'net/http'
require 'net/https'

class GetActors

  def get_pic(str)
    url = "https://www.googleapis.com/customsearch/v1?q=#{str}&cx=014219253890378238536:7qwucubk_mm&key=AIzaSyBeTOwI9eto5dEpQ3oUlRPCIvtS1TvS3kU"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

end
