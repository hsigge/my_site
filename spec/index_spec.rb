require './lib/index.rb'

describe 'Index page', type: :feature do
    it 'displays project list on the homepage' do
        visit '/'

        expect(page).to have_css '.projects'
        within '.projects' do
            expect(page).to have_content 'FizzBuzz'
            expect(page).to have_content 'Address book'
        end
    end
end