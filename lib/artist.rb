<<<<<<< HEAD
class Artist
  @@all = []
  attr_accessor :name, :songs 
=======
cclass Artist
  @@all = []
  attr_accessor :name
>>>>>>> e27c970e61c160f2c783f6707f190a31ea2a391c

  def initialize(name)
    @name = name
  end

  def self.all
    @@all    
<<<<<<< HEAD
  end

  def add_song(song)
    @songs << song 
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

=======
  end
  
  def songs
    Song.find_by_artist(self)
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

>>>>>>> e27c970e61c160f2c783f6707f190a31ea2a391c
  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end

