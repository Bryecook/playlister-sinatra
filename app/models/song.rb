class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres

    def slug
        self.name.downcase.delete(" ")
    end

    def self.find_by_slug(slug)
        object = Song.all.select{ |song| song.slug == slug}.first
        object
    end

end 