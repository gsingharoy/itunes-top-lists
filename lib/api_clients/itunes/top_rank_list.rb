module ApiClients
  module Itunes
    class TopRankList < Base

      include Shared::TopRankListParser

      def initialize(query_params = { popId: 30 })
        self.query_params = query_params
        self.query_params[:dataOnly] = true
        self.query_params[:l] = 'en'
      end

      def base_uri
        'https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewTop'
      end

      def fetch
        @response = get_request
        response_to_h
      end
    end
  end
end