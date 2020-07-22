class Song 
  @@artists = []
  @@genres  = []
  @@count = 0 

  
  attr_accessor :name, :artist, :genre 
  
  def initialize(newName, newArtist, newGenre)
    @name = newName
    @artist = newArtist
    @genre = newGenre
    

    @@genres << newGenre      #adds to Array
    @@artists << newArtist

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
    @@genres.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end
    
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end
  
  
end