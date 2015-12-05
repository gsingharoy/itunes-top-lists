require 'rails_helper'

describe App do
  #TODO: replace later with an actual fixture
  let(:sample_app_lookup) do
    {
      'trackName' => 'some track name',
      'description' => 'some description of the app bla bla',
      'artworkUrl60' => '/some/small/icon/url',
      'sellerName' => 'some publisher name',
      'price' => 0.99,
      'version' => '3.4',
      'averageUserRatingForCurrentVersion' => '4'
    }
  end
  let(:subject) { App.new('1234') }

  describe 'sync_app_information!' do
    before do
      subject.sync_app_information!(sample_app_lookup)
    end
    it 'sets the name' do
      expect(subject.name).to eq sample_app_lookup['trackName']
    end
    it 'sets the description' do
      expect(subject.description)
        .to eq sample_app_lookup['description']
    end
    it 'sets the small_icon_url' do
      expect(subject.small_icon_url)
        .to eq sample_app_lookup['artworkUrl60']
    end
    it 'sets the publisher_name' do
      expect(subject.publisher_name)
        .to eq sample_app_lookup['sellerName']
    end
    it 'sets the price' do
      expect(subject.price).to eq sample_app_lookup['price']
    end
    it 'sets the name' do
      expect(subject.version).to eq sample_app_lookup['version']
    end
    it 'sets the average_user_rating' do
      expect(subject.average_user_rating)
        .to eq sample_app_lookup['averageUserRatingForCurrentVersion']
    end
  end
end