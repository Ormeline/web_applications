#this is the main file of our application. It will contain the applicaiton  class 

require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base 
    # < this symble means the Application class is made to be a subclass of that class that is provided by the Sinatra. THis means our application class will inerate from all the methods and features from the sinatra bass class 
    configure :development do
        register Sinatra::Reloader
    end

    # Declares a route that responds to a request with:
    #  - a GET method
    #  - the path /
    get '/' do
    # The code here is executed when a request is received and we need to 
    # send a response. 

    # We can return a string which will be used as the response content.
    # Unless specified, the response status code will be 200 (OK).
    return 'Some response data'
  end
end