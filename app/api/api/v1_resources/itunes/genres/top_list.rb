class API::V1Resources::Itunes::Genres::TopList < Grape::API

  namespace :itunes do
    resources :genres do
      params do
        requires :id, type: Integer
        optional :device, type: String
      end
      get ':id/top_list' do
        { result: params[:id] }
      end
    end
  end
end