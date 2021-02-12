class SearchController < ApplicationController
  def index
    @nation_characters = NationsFacade.characters_by_nation(params[:nation])
    binding.pry
  end
end
