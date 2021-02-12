require 'rails_helper'

describe NationsFacade do
  it 'exists' do
    facade = NationsFacade.new
    expect(facade).to be_an_instance_of(NationsFacade)
  end

  it 'can return characters of a nation' do
    fire_nation_characters = NationsFacade.characters_by_nation('fire_nation')

    expect(fire_nation_character.count).to eq(100)
    expect(fire_nation_character.first).to be_an_instance_of(Character)
  end
end
