class Song
  attr_accessor :name, :artist, :genre
  #attr_reader

   @@count = 0
   @@artists = []
   @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    return  @@genres.uniq
  end

  def self.artists
    return  @@artists.uniq
  end

  def self.genre_count
    @@genres.group_by{|array| array}.map{|name, num| [name, num.length]}.to_h
  end

  def self.artist_count
    @@artists.group_by{|array| array}.map{|name, num| [name, num.length]}.to_h
  end
end
