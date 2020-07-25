class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
  end

  def self.class_method_artists
    temp_artists_array = []
    temp_artists_array = artists.uniq
    temp_artists_array
  end

  def self.genre_count
    
  end

  def self.artist_count

  end


end
