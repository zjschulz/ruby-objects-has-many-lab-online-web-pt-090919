class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song)
    x = Song.new(song)
    add_song(x)
  end
  
  def self.song_count
    Song.all.count
  end
  
  def self.find_or_create_by_name(name)
    self.all.find{|artist| artist.name == name} || self.new(name)
  end
  
end