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

      def fetch
        get_request
      end
    end
  end
end