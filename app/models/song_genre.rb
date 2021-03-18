class SongGenre < ActiveRecord::Base
    belongs_to :song
    belongs_to :genre

    def self.find_by_song_id(song)
        self.all.select {|object| object.song_id == song.id}
    end

    def self.find_by_artist_id(artist)
        array=[]
        song_genre_array=[]
        artist.songs.each do |song|
            array << song 
        end 
        array.each do |song|
            song_genre_array << SongGenre.find_by_song_id(song)
        end
        song_genre_array.flatten
    end
end 