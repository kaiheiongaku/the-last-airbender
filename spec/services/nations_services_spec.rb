require 'rails_helper'

describe NationsService do
  it 'exists' do
    service = NationsService.new

    expect(service).to be_an_instance_of(NationsService)
  end

  it 'retrieves characters associated with a nation' do
    response = NationsService.call_nations_db('/api/v1/characters?', {affiliation: 'fire nation'})

    expect(response).to be_a(Array)
    expect(response[0]).to have_key(:name)
    expect(response[0]).to have_key(:allies)
    expect(response[0]).to have_key(:enemies)
    expect(response[0]).to have_key(:affiliation)
  end
end
