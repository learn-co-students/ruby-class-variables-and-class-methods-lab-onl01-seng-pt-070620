require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << @genre
    @@artists << @artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    @@genre_count = {}
      @@genres.each do |genre|
        @@genre_count[genre] = 
        
        
#         arr = [1,2,4,5,4,7] (1..6).group_by { |i| i%3 }

# Hash[arr.group_by{|x|x}.map{|num,arr| [num, arr.size] }] 
          
      end
  end
  
  def self.artist_count
    @@artist_count = {}
  end
  
end