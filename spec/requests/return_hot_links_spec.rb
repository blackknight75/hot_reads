require 'rails_helper'

describe 'Links API' do
  describe 'GET api/v1/top-link' do
    it 'get hot links' do
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

      get '/api/v1/links'

      expect(response).to be_success
      links = JSON.parse(response.body)

      expect(links.count).to eq(10)
    end
  end
end
