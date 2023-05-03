# file: app.rb
require "sinatra/base"

class Application < Sinatra::Base
  post "/submit" do
    name = params[:name]
    message = params[:message]
    p name
    p message
    "Thanks #{params[:name]}, you sent this message: \'#{params[:message]}\'"
  end
end