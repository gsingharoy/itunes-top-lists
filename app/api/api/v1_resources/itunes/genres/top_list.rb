class API::V1Resources::Itunes::Genres::TopList < Grape::API

  namespace :itunes do
    resources :genres do
      params do
        requires :id, type: Integer
        optional :device, type: String
      end
      get ':id/top_list' do
        itunes_response = ApiClients::Itunes::TopRankList.new(
          genreId: params[:id],
          popId: 30
        ).fetch
        genre_top_list = GenreTopListFactory.new(itunes_response).build
        {
          genre: genre_top_list
        }
      end
    end
  end
end