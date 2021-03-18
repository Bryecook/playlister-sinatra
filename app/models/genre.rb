class Genre < ActiveRecord::Base
    has_many :artists
    has_many :song_genres

    def slug
        self.name.downcase.strip
    end

    def find_by_slug(slug)
        object = Genre.all.select{ |genre| genre.slug == slug}.first
        object.id
    end
end 