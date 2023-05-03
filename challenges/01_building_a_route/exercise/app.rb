#this is the main file of our application. It will contain the applicaiton  class 

require 'sinatra/base'
#require 'sinatra/reloader'

class Application < Sinatra::Base 

    # < this symble means the Application class is made to be a subclass of that class that is provided by the Sinatra. THis means our application class will inerate from all the methods and features from the sinatra bass class 
    #configure :development do
    #    register Sinatra::Reloader
    #end

    # Declares a route that responds to a request with:
    #  - a GET method
    #  - the path /
    get '/' do
        return 'Hello!'
    end 

    get '/posts' do
        greeting = params[:greeting]
        name = params[:name]
        
        p greeting 
        p name

        return 'Hello Leo'
    end

    get '/posts' do
        name = params[:name]
        cohort_name = params[:cohort_name]

        p name
        p cohort_name

        return 'A list of posts'
    end

    post '/posts' do
        return 'Post was created'
    end
end



