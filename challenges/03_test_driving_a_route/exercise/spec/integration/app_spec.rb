# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET /names" do
        it "returns 200 OK" do
        # Send a POST request to /submit
        # with some body parameters
        # and returns a response object we can test.
        response = get("/names")

        # Assert the response status code and body.
        expect(response.status).to eq(200)
        expect(response.body).to eq("Julia, Mary, Karim")
        end

        it "returns 404 Not Found" do
            response = get("/posts?id=1")
            expect(response.status).to eq(404)
            expect(response.body).to eq("Page not found")
        end
    end
end
        
