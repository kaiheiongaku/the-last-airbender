class NationsFacade
  class << self

    def characters_by_nation(nation)
      endpoint = "/api/v1/characters?"
      formatted_nation = nation.split('_').join(' ')
      params = { affiliation: formatted_nation }
      response = NationsService.call_nations_db(endpoint, params)
      binding.pry
      response.map { |nation_character_info| NationCharacter.new(nation_character_info) }
    end
  end
end
