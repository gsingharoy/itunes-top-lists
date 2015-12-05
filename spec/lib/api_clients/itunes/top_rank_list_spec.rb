require 'rails_helper'

describe ApiClients::Itunes::TopRankList do

  describe '#base_uri' do
    let(:subject) { ApiClients::Itunes::TopRankList.new }
    it 'returns the correct url' do
      expect(subject.base_uri)
        .to eq 'https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop'
    end
  end

  describe '#headers' do
    let(:subject) { ApiClients::Itunes::TopRankList.new }
    it 'returns empty hash' do
      expected_result = {
        "Accept-Encoding"=>"gzip, deflate, sdch",
        "Accept-Language"=>"en-US,en;q=0.8,lv;q=0.6",
        "User-Agent"=>"iTunes/11.1.1 (Windows; Microsoft Windows 7 x64 Ultimate Edition Service Pack 1 (Build 7601)) AppleWebKit/536.30.1",
        "Accept"=>"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
        "Cache-Control"=>"max-age=0",
        "X-Apple-Store-Front"=>"143441-1,17"
      }
      expect(subject.headers)
        .to eq expected_result
    end
  end
end