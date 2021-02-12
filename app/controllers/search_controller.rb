class SearchController < ApplicationController
  def index
    connection = Faraday.new('https://last-airbender-api.herokuapp.com')

    endpoint = '/api/v1/characters?affiliation=Fire+Nation'
    response = connection.get(endpoint)
    json = JSON.parse(response.body, symbolize_names: true)


  end
end
