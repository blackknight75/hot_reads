require 'rails_helper'

describe Link, type: :model do
  it { should validate_presence_of(:url) }
  it { should validate_uniqueness_of(:url) }

  describe '#best_ten' do
    it 'returns the top ten views ordered by count' do
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

      links = described_class.best_ten
      expect(links.count).to eq(10)
      expect(links[0].url).to eq('http://google.com')
      expect(links[-1].url).to eq('http://fish.com')
      expect(links[0].view_count).to eq(24)
      expect(links[-1].view_count).to eq(2)
    end
  end

  describe '#top_link' do
    it 'returns the top link ordered by count' do
      Link.create!(url: 'http://google.com', view_count: 15)
      Link.create!(url: 'http://ign.com', view_count: 14)
      Link.create!(url: 'http://beef.com', view_count: 13)

      link = Link.best_ten
      expect(link[0].url).to eq('http://google.com')
    end
  end
end
