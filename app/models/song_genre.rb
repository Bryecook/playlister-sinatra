class SongGenre < ActiveRecord::Base
    belongs_to :song
    belongs_to :genre

    def self.find_by_song_id(song)
        self.all.select {|object| object.song_id == song.id}
    end

    def self.find_by_artist_id(artist)
        song_ids=artist.songs.each do |song|
            song.id 
        self.all.select {|object| object.song_id == song.id}
    end
end 