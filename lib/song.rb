require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  #binding.pry
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
    #binding.pry
  end


  def self.count
    @@count
  end

  def self.genres
    temp_genres_array = []
    temp_genres_array = @@genres.uniq
    temp_genres_array
  end

  def self.artists
    temp_artists_array = []
    temp_artists_array = @@artists.uniq
    temp_artists_array
  end

  def self.genre_count

  end

  def self.artist_count

  end


end
