require 'rails_helper'

describe 'when user visits /' do
  it 'sees the top 10 links' do
    Link.create!(url: 'http://google.com', view_count: 24)
    Link.create!(url: 'http://ign.com', view_count: 15)
    Link.create!(url: 'http://beef.com', view_count: 14)
    Link.create!(url: 'http://amazon.com', view_count: 10)
    Link.create!(url: 'http://turing.io', view_count: 9)
    Link.create!(url: 'http://heroku.com', view_count: 7)
    Link.create!(url: 'http://apple.com', view_count: 5)
    Link.create!(url: 'http://microsoft.com', view_count: 4)
    Link.create!(url: 'http://sushi.com', view_count: 3)
    Link.create!(url: 'http://fish.com', view_count: 2)
    Link.create!(url: 'http://cnn.com', view_count: 1)

    visit root_path

      expect(page).to have_content('Index')
      expect(page).to have_content('1. http://google.com')
      expect(page).to have_content('2. http://ign.com')
      expect(page).to have_content('3. http://beef.com')
      expect(page).to have_content('4. http://amazon.com')
      expect(page).to have_content('5. http://turing.io')
      expect(page).to have_content('6. http://heroku.com')
      expect(page).to have_content('7. http://apple.com')
      expect(page).to have_content('8. http://microsoft.com')
      expect(page).to have_content('9. http://sushi.com')
      expect(page).to have_content('10. http://fish.com')
      expect(page).to_not have_content('http://cnn.com')
  end
end
