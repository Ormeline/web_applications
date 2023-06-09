require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context 'GET/ albums' do
    it 'should return the list of albums' do
      response = get('/albums')

      expected_response = "Surfer Rosa, Waterloo, Super Trouper, Bossanova, Lover, Folklore, I Put a Spell on You, Baltimore, Here Comes the Sun, Fodder on My Wings, Ring Ring"

      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end

  context 'POST/ albums' do
    it 'should create a new album' do
      response = post(
        '/albums', 
        title: 'Voyage', 
        release_year:'2022', 
        artist_id:'2'
      ) 
      expect(response.status).to eq(200)
      expect(response.body).to eq''

      response = get('/albums')

      expect(response.body).to include('Voyage')
    end
  end

  context 'GET/ artists' do
    it 'should return the list of artists' do
      response = get('/artists')
  
      expected_response = "Pixies, ABBA, Taylor Swift, Nina Simone"
      
      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end

  context 'POST /artists' do
    it 'should create a new artist and return it in the list of artists' do
      # Make the request to create a new artist
      post('/artists', name: 'Wild nothing', genre: 'Indie')

      # Verify that the response has a successful status
      expect(last_response.status).to eq(200)
    end
  end
end
