module ApiClients
  module Itunes
    class TopRankList < Base

      def initialize(query_params = { popId: 30 })
        self.query_params = query_params
        self.query_params[:dataOnly] = true
        self.query_params[:l] = 'en'
      end

      def base_uri
        'https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop'
      end

      def headers
        {
          "Accept-Encoding"=>"gzip, deflate, sdch",
          "Accept-Language"=>"en-US,en;q=0.8,lv;q=0.6",
          "User-Agent"=>"iTunes/11.1.1 (Windows; Microsoft Windows 7 x64 Ultimate Edition Service Pack 1 (Build 7601)) AppleWebKit/536.30.1",
          "Accept"=>"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
          "Cache-Control"=>"max-age=0",
          "X-Apple-Store-Front"=>"143441-1,17"
        }
      end

      def fetch
        @response = get_request
        JSON(@response.body)
      rescue
        raise Errors::CategoryNotFoundError, 'category not found'
      end
    end
  end
end