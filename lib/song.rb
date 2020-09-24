require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end 

  def self.new_by_filename(filename)
    songarray = filename.split("-")
    name = songarray[1]
    song = self.new(name)
    song.artist_name = songarray[0]
    song 
  end 

end
