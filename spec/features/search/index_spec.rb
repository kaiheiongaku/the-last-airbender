require 'rails_helper'

describe 'when I visit the root path' do
  describe 'I can do a search for the members of a nation' do
    it 'allows me to select a nation' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
    end

    it 'displays the total number of the fire nation' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(page).to have_content('Total population: 20')
    end

    it 'displays detailed information for the first 25 members' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(page).to have_css('.characters', count: 20)

      within(first('.characters')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.affiliations')
        expect(page).to have_css('.enemies')
      end
      expect(page).to have_content('Afiko')
      expect(page).to have_content('Aang')
      expect(page).to have_content('Ozai')
      expect(page).to have_content('Dai Li')
    end
  end
end
