require 'pry'


class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    
    def initialize(name , artist , genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        
        @name = name
        @artist = artist
        @genre = genre
    end

    attr_accessor :name, :artist, :genre

    
    def self.count
        @@count
    end

    def self.artists
        p @@artists.uniq
    end

    def self.genres
        p @@genres.uniq
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)) { |h, x| h[x] += 1; h}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) { |h, x| h[x] += 1; h}
    end


end


# binding.pry