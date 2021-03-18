class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres


    def slug
        self.name.downcase.strip
    end
    
    def self.find_by_slug(slug)
        object = Artist.all.select{ |artist| artist.slug == slug}.first
        object
    end
end 