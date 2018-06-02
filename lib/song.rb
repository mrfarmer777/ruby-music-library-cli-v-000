
class Song
  attr_accessor :name, :artist, :genre

  @@all=[]

  def initialize(name,artist=nil)
    @name=name    #initializes with a name
    if !artist==nil
      self.artist(artist)
    end
  end

  ##! How is this going to be generalizable?
  def self.all  #expose the class variable @@all
    @@all
  end

  def self.destroy_all #destroy all songs!
    @@all.clear
  end

  def save
    @@all<<self  #generalizable save method that requires the all method
  end

  def self.create(name) #just like initialize, but with save!
    song = Song.new(name)
    song.save
    song
  end

  #relational methods
  def artist=(artist)
    @artist=artist
    artist.add_song(self)
  end





end
