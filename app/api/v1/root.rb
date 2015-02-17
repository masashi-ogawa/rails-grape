module V1
  class Root < Grape::API
    version 'v1', using: :path
    format :json
    prefix 'api'

    mount V1::User
  end
end