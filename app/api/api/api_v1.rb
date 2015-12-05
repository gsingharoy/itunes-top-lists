class API::ApiV1 < Grape::API
  version 'v1', using: :path, cascade: true
  prefix 'api'
  format :json

  desc 'returns pong if alive'
  get :ping do
    { result: 'pong' }
  end

  mount ::API::V1Resources::Itunes::Genres::TopList
end