module ApiClients
  module Itunes
    module Shared
      module TopRankListParser

        def response_to_h
          html_doc = Nokogiri::HTML.parse(@response.body)
          JSON(html_doc.children.children.children.children[0].text)
        end
      end
    end
  end
end