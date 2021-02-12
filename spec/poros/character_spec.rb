require 'rails_helper'

describe Character do
  it "exist" do
    attributes = {name: 'Robert the Destroyer',
                allies: 'Mike the Kiwi',
           affiliation: 'Turing Nation',
               enemies: 'ViM'
                 }
    bad_student = Character.new(attributes)
    expect(bad_student).to be_an_instance_of(Character)
  end

  it 'has attributes' do
    attributes = {name: 'Robert the Destroyer',
                allies: 'Mike the Kiwi',
           affiliation: 'Turing Nation',
               enemies: 'ViM'
                 }
    bad_student = Character.new(attributes)

    expect(bad_student.name).to eq('Robert the Destroyer')
    expect(bad_student.allies).to eq('Mike the Kiwi')
    expect(bad_student.affiliation).to eq('Turing Nation')
    expect(bad_student.enemies).to eq('ViM')
  end
end
