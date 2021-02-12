class NationsService
  class << self
    def call_nations_db(endpoint, params = {})
      response = connection.get(endpoint) do |request|
        request.params = params
      end
      JSON.parse(response.body, symbolize_names: true)
    end

    private
    def connection
      Faraday.new('https://last-airbender-api.herokuapp.com/')
    end
  end
end
