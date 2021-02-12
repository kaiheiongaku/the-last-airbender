require 'rails_helper'

describe NationsFacade do
  it 'exists' do
    facade = NationsFacade.new
    expect(facade).to be_an_instance_of(NationsFacade)
  end

  it 'can return characters of a nation' do
    fire_nation_characters = NationsFacade.characters_by_nation('fire_nation')

    expect(fire_nation_characters.count).to eq(20)
    expect(fire_nation_characters.first).to be_an_instance_of(Character)
  end
end
