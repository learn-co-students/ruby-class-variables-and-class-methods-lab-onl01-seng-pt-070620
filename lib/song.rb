require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    #if !(@@genres.include?(genre))
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !(genre_hash.key?(genre))
        genre_hash[genre] = @@genres.count(genre)
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !(artist_hash.key?(artist))
        artist_hash[artist] = @@artists.count(artist)
      end
    end
    artist_hash
  end

end


