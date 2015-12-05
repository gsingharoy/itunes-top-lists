module ApiClients
  module Itunes
    class AppLookup < Base

      def initialize(query_params)
        self.query_params = query_params
      end

      def base_uri
        'https://itunes.apple.com/lookup'
      end

      def fetch
        JSON(get_request)
      end

      def headers
        {}
      end
    end
  end
end