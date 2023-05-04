# file: app.rb
require "sinatra/base"

class Application < Sinatra::Base
  post '/sort-names' do
    names = params[:name].split(',')
    sorted_names = names.map(&:strip).sort.join(', ')
    puts "sorted names: #{sorted_names}"
    "sorted names: #{sorted_names}"
  end

  not_found do
    status 404
    "Name is not found"
  end
end
