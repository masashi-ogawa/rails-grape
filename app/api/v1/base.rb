module V1
  class Base < Grape::API
    version 'v1', using: :path
    format :json
    formatter :json, Grape::Formatter::Jbuilder
    prefix 'api'

    mount V1::User
  end
end