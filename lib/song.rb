class Song

    @@count = 0
    @@genres = []
    @@artists = []
    @@name = []

    def initialize (name, artist, genre)
        @@artists << artist
        @@genres << genre
        @@name << name
        @@count+=1
    end

    def self.count 
        @@count
    end

    def name
       new_name =  @@name.uniq
       new_name[2]
    end

    

    def artist 
        new_artists = @@artists.uniq
        new_artists[1]
    end

    def genre
        new_genres = @@genres.uniq
        new_genres[1]

    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end


    def self.genre_count
        
        counts = Hash.new(0)
        @@genres.each { |name| counts[name] += 1 }
        counts
          
    end

    def self.artist_count
        counts = Hash.new(0)
        @@artists.each { |name| counts[name] += 1 }
        counts
    end




end
