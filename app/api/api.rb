# encoding: UTF-8

class API < Grape::API
  # Mounting the first version of api.
  # Other api versions can be mounted here with previous version support
  mount ApiV1
end