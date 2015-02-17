module V2
  class User < Grape::API

    helpers do

    end

    @@users = {}

    resource :users do
      desc 'all users'
      get do
        @@users.values
      end
    end
  end
end