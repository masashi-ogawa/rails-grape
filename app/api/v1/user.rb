module V1
  class User < Grape::API

    helpers do

    end

    @@users = {
        '1234' => {:id => '1234', :name => 'ogawa', :status => 1},
        '1235' => {:id => '1235', :name => 'toyama', :status => 2}
    }

    resource :users do
      desc 'all users'
      get do
        @@users.values
      end

      desc 'get user'
      params do
        requires :id, type: String, desc: 'User id'
      end
      route_param :id do
        get do
          @@users[params[:id]]
        end
      end

      desc 'update status'
      params do
        requires :id, type: String, desc: 'User id'
        requires :status, type: Integer, desc: 'User status'
      end
      route_param :id do
        put do
          @@users[params[:id]][:status] = params[:status]
          @@users[params[:id]]
        end
      end

      desc 'create user'
      params do
        requires :name, type: String, desc: 'User name'
      end
      post do
        id = @@users.keys.last.to_i + 1
        @@users[id] = {:id => id, :name => params[:name], :status => 1}
        @@users[id]
      end
    end
  end
end