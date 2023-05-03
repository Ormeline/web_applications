# file: app.rb
require "sinatra/base"

class Application < Sinatra::Base
  get "/names" do
    name = params[:name]
    p name
    "Julia, Mary, Karim"
  end

  # Catch-all route handler for 404 errors.
  # This must be the last route defined in the class.
  not_found do
    status 404
    "Page not found"
  end
end
