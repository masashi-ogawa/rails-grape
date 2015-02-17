desc "API Routes"
task routes_api: :environment do
  API.routes.each do |api|
    method = api.route_method.ljust(10)
    path = api.route_path.gsub(':version', api.route_version)
    puts "     #{method} #{path}"
  end
end