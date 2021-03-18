class SongsController < ApplicationController
    set :views, "app/views/songs"

    get '/songs' do
        @songs=Song.all
        erb :index
    end

    get '/songs/new' do 
        @artists = Artist.all
        erb :new
    end

    get '/songs/:slug' do 
        @song = Song.find_by_slug(params[:slug])
        @songgenres = SongGenre.find_by_song_id(@song)
        erb :show
    end




end