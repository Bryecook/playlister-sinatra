class ArtistsController < ApplicationController
    set :views, "app/views/artists"

    get '/artists' do
        @artists=Artist.all
        erb :index
    end

    get '/artists/:slug' do 
        @artist = Artist.find_by_slug(params[:slug])
        @songgenres = SongGenre.find_by_artist_id(@artist)
        erb :show
    end

end
