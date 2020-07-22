class Song 
  require 'pry'
  attr_accessor :name, :artist, :genre
  
  #CLASS VARIABLES
  @@count = 0 #keep track of songs
  @@artists = []
  @@genres = [] #keep track of genres of songs
  @@genre_count = {}
  @@artist_count = {}
  
  #CLASS METHODS
  def self.count
    @@count
  end
  
  def self.genres
    uniq_genres = []
    @@genres.each do |gen|
      uniq_genres.push(gen) unless uniq_genres.include?(gen)
    end
    return uniq_genres
  end
  
  def self.artists
    uniq_artist = []
    @@artists.each do |art|
      uniq_artist.push(art) unless uniq_artist.include?(art)
    end
    return uniq_artist
  end
  
  def self.artist_count
    @@artists.collect do |artist|
      if @@artist_count.include?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
  
  def self.genre_count
    @@genres.collect do |genre|
      if @@genre_count.include?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #overall song count
    @@genres << genre #add ALL genres to array
    @@artists << artist #add ALL artists to array
  end
end