class Character
  attr_reader :name, :allies, :enemies, :affiliation

  def initialize(character_info)
    @name = character_info[:name]
    @allies = character_info[:allies]
    @enemies = character_info[:enemies]
    @affiliation = character_info[:affiliation]
  end
end
