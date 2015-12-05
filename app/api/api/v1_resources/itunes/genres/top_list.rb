class API::V1Resources::Itunes::Genres::TopList < Grape::API

  namespace :itunes do
    resources :genres do
      params do
        requires :id, type: Integer
        optional :device, type: String
      end
      get ':id/top_list' do
        params[:device].try(:downcase) == 'ipad' ? pop_id = 47 : 30
        begin
          itunes_response = ApiClients::Itunes::TopRankList.new(
            genreId: params[:id],
            popId: pop_id
          ).fetch
          genre_top_list = GenreTopListFactory.new(itunes_response).build
          { genre: genre_top_list }
        rescue ApiClients::Itunes::Errors::CategoryNotFoundError => e
          status 404
          { error: e.message }
        rescue Error => e
          status 500
          { error: 'internal error' }
        end
      end
    end
  end
end