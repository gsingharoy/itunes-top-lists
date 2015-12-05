require 'rails_helper'

describe ApiClients::Itunes::AppLookup do

  describe '#base_uri' do
    let(:subject) { ApiClients::Itunes::AppLookup.new(id: 1234) }
    it 'returns the correct url' do
      expect(subject.base_uri)
        .to eq 'https://itunes.apple.com/lookup'
    end
  end

  describe '#headers' do
    let(:subject) { ApiClients::Itunes::AppLookup.new(id: 1234) }
    it 'returns empty hash' do
      expect(subject.headers)
        .to eq({})
    end
  end
end