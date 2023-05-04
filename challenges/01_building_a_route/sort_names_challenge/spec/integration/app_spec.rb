require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  include Rack::Test::Methods
  
  let(:app) { Application.new }

  context "POST /sort-names" do
        it "returns sorted names with status 200 OK" do
            input = "Joe, Alice, Zoe, Julia, Kieran"
            expected_output = "sorted names: Alice, Joe, Julia, Kieran, Zoe"
            post "/sort-names", name: input
            expect(last_response.status).to eq(200)
            expect(last_response.body).to eq(expected_output)
        end   

        it "returns 404 message if name is not found" do
            input = "Kat"
            post "unknown-route?name=#{input}"
            expect(last_response.status).to eq(404)
            expect(last_response.body).to eq("Name is not found")
        end
    end
end

  
  

