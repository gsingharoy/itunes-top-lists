module ApiClients
  module Itunes
    class Base

      attr_accessor :query_params

      def base_uri
        raise 'implement me :)'
      end

      def headers
        raise 'implement me :)'
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