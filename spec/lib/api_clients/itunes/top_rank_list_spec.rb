require 'rails_helper'

describe ApiClients::Itunes::TopRankList do

  describe '#base_uri' do
    let(:subject) { ApiClients::Itunes::TopRankList.new }
    it 'returns the correct url' do
      expect(subject.base_uri)
        .to eq 'https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop'
    end
  end
end