module ApiClients
  module Itunes
    class Base

      attr_accessor :query_params

      DEFAULT_HEADERS = {
        "Accept-Encoding"=>"gzip, deflate, sdch",
        "Accept-Language"=>"en-US,en;q=0.8,lv;q=0.6",
        "User-Agent"=>"iTunes/11.1.1 (Windows; Microsoft Windows 7 x64 Ultimate Edition Service Pack 1 (Build 7601)) AppleWebKit/536.30.1",
        "Accept"=>"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
        "Cache-Control"=>"max-age=0",
        "X-Apple-Store-Front"=>"143441-1,17"
      }

      def base_uri
        raise 'implement me :)'
      end

      def headers
        DEFAULT_HEADERS
      end

      def get_request
        HTTParty.get("#{base_uri}?#{get_params_string}", headers: headers)
      end

      private

      def get_params_string
        @get_params_string ||= query_params.map do |k,v|
          "#{k.to_s}=#{v}"
        end.join('&')
      end
    end
  end
end