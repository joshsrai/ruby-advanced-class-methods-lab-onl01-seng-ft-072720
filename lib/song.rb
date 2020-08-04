class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = Song.new 
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = Song.create
    song.name = name
    song
  end
  
  def self.crete_by_artist_name(artist_name)
    song = Song.create 
    song.artist_name = artist_name 
    song
  end
  
  def self.find_by_name
    @@all.find {|song| song.name == name}
  end







end
