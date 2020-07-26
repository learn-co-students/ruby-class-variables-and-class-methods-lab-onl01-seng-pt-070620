require 'pry'
class Song 
  
  @@count = 0 
  @@genres =[]
  @@artists =[]
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name,artist,genre)
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
    @@genres.uniq
  end  
  
  def self.artists 
    @@artists.uniq
  end  
  
  #expected: {"pop"=>1, "rap"=>2}
  
  def self.genre_count
    genre_count = {}
   @@genres.each do |styles|
  if !genre_count[styles]
      genre_count[styles]=1
   else 
     genre_count[styles]+=1
    end
  end
  genre_count
 end 
    
  def self.artist_count 
    artist_count = {}
    @@artists.each do |name|
      if !artist_count[name]
        artist_count[name]=1 
      else
        artist_count[name]+=1
      end
    end
    artist_count
  end   
     
end  






