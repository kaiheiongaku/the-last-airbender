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

      expect(current_page).to have_content('Total population of the Fire Nation: 100')
    end

    it 'displays detailed information for the first 25 members' do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(page).to have_css('.members', count: 25)

      within(first('.members')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.affiliations')
        expect(page).to have_css('.enemies')
      end
      expect(page).to have_content('Chickamauga & Chattanooga National Military Park')#add more specifics
    end
  end
end
