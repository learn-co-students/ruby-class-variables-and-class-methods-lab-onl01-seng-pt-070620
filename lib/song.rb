class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @@genres << genre 
        @@artists << artist
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
    end

    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        genreshash = Hash.new
        genreshash = @@genres.group_by{|genre| genre}.collect {|k,v,| [k, v.size] }.to_h
    end
end