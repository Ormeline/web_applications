# file: app.rb (THIS IS THE ROUTE- IF NOT IMPLEMENTED WE WILL GET A 404 ERROR)
require "sinatra"
require "sinatra/reloader"
require_relative "lib/database_connection"
require_relative "lib/album_repository"
require_relative "lib/artist_repository"

DatabaseConnection.connect

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    return erb(:index)
  end

  get "/albums" do
    repo = AlbumRepository.new
    albums = repo.all

    response = albums.map do |album|
      album.title
    end.join(", ")

    return response
  end

  post "/albums" do
    if invalid_album_request_parameters?
      status 400
      return ""
    end

    repo = AlbumRepository.new
    new_album = Album.new
    new_album.title = params[:title]
    new_album.release_year = params[:release_year]
    new_album.artist_id = params[:artist_id].to_i

    repo.create(new_album)

    return ""
  end

  def invalid_album_request_parameters?
    return params[:title].nil? || params[:release_year].nil? || params[:artist_id].nil?
  end

  get "/artists" do
    repo = ArtistRepository.new
    artists = repo.all

    response = artists.map do |artist|
      artist.name
    end.join(", ")

    return response
  end

  get "/artists/new" do
    erb :new_artist
  end

  get "/albums/new" do
    return erb(:new_album)
  end

  get "/albums/:id" do
    repo = AlbumRepository.new
    artist_repo = ArtistRepository.new

    @album = repo.find(params[:id].to_i)
    @artist = artist_repo.find(@album.artist_id)

    erb :album
  end

  post "/artists" do
    if invalid_artist_request_parameters?
      status 400
      return ""
    end

    repo = ArtistRepository.new
    new_artist = Artist.new
    new_artist.name = params[:name]
    new_artist.genre = params[:genre]

    repo.create(new_artist)

    return ""
  end

  def invalid_artist_request_parameters?
    return params[:name].nil?
  end
end
