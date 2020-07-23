class Song
  attr_accessor :name, :artist, :genre
  class << self 
    attr_accessor :count, :genres, :artists
  end
  @@all = []
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count  
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_counter = Hash.new(0)
    @@genres.collect do |genre_name|
      genre_counter[genre_name] += 1
        genre_counter.each do |genre_type, count|
      end
    end
    return genre_counter
  end
  
  def self.artist_count
    artist_counter = Hash.new(0)
    @@artists.collect do |artist_name|
      artist_counter[artist_name] += 1
        artist_counter.each do |artist_name, count|
      end
    end
    return artist_counter
  end

end  