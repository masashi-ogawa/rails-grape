module V2
  class Base < Grape::API
    version 'v2', using: :path
    format :json
    prefix 'api'

    mount V2::User
  end
end